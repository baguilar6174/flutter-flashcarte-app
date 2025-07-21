import 'package:isar/isar.dart';
import 'package:fpdart/fpdart.dart';

import 'package:flutter_flashcarte_app/core/error/failure.dart';

import 'package:flutter_flashcarte_app/features/cards/data/mappers/mappers.dart';
import 'package:flutter_flashcarte_app/features/cards/data/models/models.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/datasource/flashcard_datasource.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';

class IsarLocalFlashCardsDatasourceImpl implements FlashcardDataSource {
  final Isar _isar;

  const IsarLocalFlashCardsDatasourceImpl(this._isar);

  @override
  Future<Either<Failure, String>> create(Flashcard flashcard) async {
    try {
      return await _isar.writeTxn(() async {
        // Convert entity to model
        final model = FlashcardMapper.toModel(flashcard);

        // Set up deck relationship
        await _linkToDeck(model, flashcard.deckId);

        // Set up tag relationships
        await _linkToTags(model, flashcard.tagIds);

        // Save flashcard
        await _isar.flashcardModels.put(model);

        // Save relationships
        await model.deck.save();
        await model.tags.save();

        // Update deck statistics
        await _updateDeckStatistics(flashcard.deckId);

        return Right(flashcard.id);
      });
    } catch (e) {
      return Left(_handleDatabaseError(e, 'create flashcard'));
    }
  }

  @override
  Future<Either<Failure, List<Flashcard>>> getAll() async {
    try {
      final models = await _isar.flashcardModels.where().findAll();

      // Load relationships for all models
      for (final model in models) {
        await model.deck.load();
        await model.tags.load();
      }

      final entities = FlashcardMapper.toEntityList(models);
      return Right(entities);
    } catch (e) {
      return Left(_handleDatabaseError(e, 'get all flashcards'));
    }
  }

  @override
  Future<Either<Failure, Flashcard>> getById(String id) async {
    try {
      final model = await _isar.flashcardModels
          .where()
          .cardIdEqualTo(id)
          .findFirst();
      if (model == null) {
        return left(const NoDataFailure('Flashcard not found'));
      }
      // Load relationships
      await model.deck.load();
      await model.tags.load();
      final entity = FlashcardMapper.toEntity(model);
      return right(entity);
    } catch (e) {
      return left(_handleDatabaseError(e, 'get flashcard by id'));
    }
  }

  @override
  Future<Either<Failure, Unit>> update(Flashcard flashcard) async {
    try {
      return await _isar.writeTxn(() async {
        // Find existing model
        final existingModel = await _isar.flashcardModels
            .where()
            .cardIdEqualTo(flashcard.id)
            .findFirst();

        if (existingModel == null) {
          return left(const NoDataFailure('Flashcard not found for update'));
        }
        // Update model with new data
        final updatedModel = FlashcardMapper.toModel(flashcard);
        updatedModel.id = existingModel.id; // Preserve database ID

        // Update deck relationship if changed
        if (flashcard.deckId != existingModel.deck.value?.deckId) {
          await _linkToDeck(updatedModel, flashcard.deckId);
        }

        // Update tag relationships
        await _updateTagRelationships(updatedModel, flashcard.tagIds);

        // Save updated model
        await _isar.flashcardModels.put(updatedModel);
        await updatedModel.deck.save();
        await updatedModel.tags.save();
        return Right(unit);
      });
    } catch (e) {
      return Left(_handleDatabaseError(e, 'update flashcard'));
    }
  }

  @override
  Future<Either<Failure, Unit>> delete(String id) async {
    try {
      return await _isar.writeTxn(() async {
        final model = await _isar.flashcardModels
            .where()
            .cardIdEqualTo(id)
            .findFirst();

        if (model == null) {
          return left(const NoDataFailure('Flashcard not found for deletion'));
        }

        final deckId = model.deck.value?.deckId;

        // Delete the flashcard
        await _isar.flashcardModels.delete(model.id);

        // Update deck statistics
        if (deckId != null) {
          await _updateDeckStatistics(deckId);
        }

        return Right(unit);
      });
    } catch (e) {
      return Left(_handleDatabaseError(e, 'delete flashcard'));
    }
  }

  @override
  Future<Either<Failure, List<Flashcard>>> getByDeckId(String deckId) async {
    try {
      // Find deck first
      final deck = await _isar.deckModels
          .where()
          .deckIdEqualTo(deckId)
          .findFirst();

      if (deck == null) {
        return left(const NoDataFailure('Deck not found'));
      }

      // Load flashcards for this deck
      await deck.flashcards.load();

      // Convert models to entities
      final models = deck.flashcards.toList();
      for (final model in models) {
        await model.tags.load(); // Load tags for each card
      }

      final entities = FlashcardMapper.toEntityList(models);
      return Right(entities);
    } catch (e) {
      return Left(_handleDatabaseError(e, 'get flashcards by deck'));
    }
  }

  @override
  Future<Either<Failure, List<Flashcard>>> searchByText(String query) async {
    try {
      final models = await _isar.flashcardModels
          .where()
          // .searchTextContains(query.toLowerCase())
          .findAll();

      // Load relationships
      for (final model in models) {
        await model.deck.load();
        await model.tags.load();
      }

      final entities = FlashcardMapper.toEntityList(models);
      return Right(entities);
    } catch (e) {
      return Left(_handleDatabaseError(e, 'search flashcards'));
    }
  }

  @override
  Future<Either<Failure, List<Flashcard>>> getCardsNeedingReview() async {
    try {
      // final now = DateTime.now();

      final models = await _isar.flashcardModels
          .where()
          .needsReviewEqualTo(true)
          // .or()
          // .nextReviewDateIsNull()
          // .or()
          // .nextReviewDateLessThan(now)
          // .sortByNextReviewDate()
          .findAll();
      // Load relationships
      for (final model in models) {
        await model.deck.load();
        await model.tags.load();
      }
      final entities = FlashcardMapper.toEntityList(models);
      return Right(entities);
    } catch (e) {
      return Left(_handleDatabaseError(e, 'get cards needing review'));
    }
  }

  // Helper methods for relationship management
  Future<void> _linkToDeck(FlashcardModel model, String deckId) async {
    final deck = await _isar.deckModels
        .where()
        .deckIdEqualTo(deckId)
        .findFirst();
    if (deck != null) {
      model.deck.value = deck;
    }
  }

  Future<void> _linkToTags(FlashcardModel model, List<String> tagIds) async {
    if (tagIds.isEmpty) return;
    final tags = await _isar.tagModels
        .where()
        .anyOf(tagIds, (q, tagId) => q.tagIdEqualTo(tagId))
        .findAll();
    model.tags.addAll(tags);
  }

  Future<void> _updateTagRelationships(
    FlashcardModel model,
    List<String> tagIds,
  ) async {
    // Clear existing tags
    model.tags.clear();
    // Add new tags
    await _linkToTags(model, tagIds);
  }

  Future<void> _updateDeckStatistics(String deckId) async {
    final deck = await _isar.deckModels
        .where()
        .deckIdEqualTo(deckId)
        .findFirst();
    if (deck == null) return;
    // Load flashcards to calculate statistics
    await deck.flashcards.load();

    final cards = deck.flashcards.toList();

    // Calculate statistics
    final totalCards = cards.length;
    final newCards = cards.where((card) => card.isNew).length;
    final reviewCards = cards
        .where((card) => card.needsReview && !card.isNew)
        .length;
    final masteredCards = cards
        .where((card) => !card.needsReview && !card.isNew)
        .length;
    // Update deck statistics
    deck.cardCount = totalCards;
    deck.newCardCount = newCards;
    deck.reviewCardCount = reviewCards;
    deck.masteredCardCount = masteredCards;
    deck.updatedAt = DateTime.now();
    await _isar.deckModels.put(deck);
  }

  Failure _handleDatabaseError(dynamic error, String operation) {
    if (error is IsarError) {
      return DatabaseFailure('Isar error during $operation: ${error.message}');
    }
    return DatabaseFailure('Unexpected error during $operation: $error');
  }
}
