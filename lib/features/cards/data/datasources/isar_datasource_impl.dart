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

        // Save flashcard
        await _isar.flashcardModels.put(model);

        // Save relationships
        await model.deck.save();

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

        // Save updated model
        await _isar.flashcardModels.put(updatedModel);
        await updatedModel.deck.save();
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

        // Delete the flashcard
        await _isar.flashcardModels.delete(model.id);

        return Right(unit);
      });
    } catch (e) {
      return Left(_handleDatabaseError(e, 'delete flashcard'));
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

  Failure _handleDatabaseError(dynamic error, String operation) {
    if (error is IsarError) {
      return DatabaseFailure('Isar error during $operation: ${error.message}');
    }
    return DatabaseFailure('Unexpected error during $operation: $error');
  }
}
