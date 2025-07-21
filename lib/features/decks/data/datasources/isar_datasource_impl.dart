import 'package:isar/isar.dart';
import 'package:fpdart/fpdart.dart';

import 'package:flutter_flashcarte_app/core/error/failure.dart';

import 'package:flutter_flashcarte_app/features/cards/data/mappers/mappers.dart';
import 'package:flutter_flashcarte_app/features/cards/data/models/models.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';
import 'package:flutter_flashcarte_app/features/decks/domain/datasource/deck_datasource.dart';

class IsarLocalDeckDataSourceDatasourceImpl implements DeckDataSource {
  final Isar _isar;
  IsarLocalDeckDataSourceDatasourceImpl(this._isar);
  @override
  Future<Either<Failure, String>> create(Deck deck) async {
    try {
      return await _isar.writeTxn(() async {
        final model = DeckMapper.toModel(deck);
        await _isar.deckModels.put(model);
        return right(deck.id);
      });
    } catch (e) {
      return left(_handleDatabaseError(e, 'create deck'));
    }
  }

  @override
  Future<Either<Failure, List<Deck>>> getAll() async {
    try {
      final models = await _isar.deckModels
          .where()
          .sortByCreatedAtDesc()
          .findAll();
      final entities = DeckMapper.toEntityList(models);
      return right(entities);
    } catch (e) {
      return left(_handleDatabaseError(e, 'get all decks'));
    }
  }

  @override
  Future<Either<Failure, Deck>> getById(String id) async {
    try {
      final model = await _isar.deckModels
          .where()
          .deckIdEqualTo(id)
          .findFirst();
      if (model == null) {
        return left(const NoDataFailure('Deck not found'));
      }
      final entity = DeckMapper.toEntity(model);
      return right(entity);
    } catch (e) {
      return left(_handleDatabaseError(e, 'get deck by id'));
    }
  }

  @override
  Future<Either<Failure, Unit>> update(Deck deck) async {
    try {
      return await _isar.writeTxn(() async {
        final existingModel = await _isar.deckModels
            .where()
            .deckIdEqualTo(deck.id)
            .findFirst();
        if (existingModel == null) {
          return left(const NoDataFailure('Deck not found for update'));
        }
        final updatedModel = DeckMapper.toModel(deck);
        updatedModel.id = existingModel.id; // Preserve database ID
        await _isar.deckModels.put(updatedModel);
        return right(unit);
      });
    } catch (e) {
      return left(_handleDatabaseError(e, 'update deck'));
    }
  }

  @override
  Future<Either<Failure, Unit>> delete(String id) async {
    try {
      return await _isar.writeTxn(() async {
        final model = await _isar.deckModels
            .where()
            .deckIdEqualTo(id)
            .findFirst();
        if (model == null) {
          return left(const NoDataFailure('Deck not found for deletion'));
        }
        // Load and delete all associated flashcards
        await model.flashcards.load();
        for (final flashcard in model.flashcards) {
          await _isar.flashcardModels.delete(flashcard.id);
        }
        // Delete the deck
        await _isar.deckModels.delete(model.id);
        return right(unit);
      });
    } catch (e) {
      return left(_handleDatabaseError(e, 'delete deck'));
    }
  }

  @override
  Future<Either<Failure, List<Deck>>> getRecentlyStudied() async {
    try {
      // final threeDaysAgo = DateTime.now().subtract(const Duration(days: 3));

      final models = await _isar.deckModels
          .where()
          //.lastStudiedAtIsNotNull()
          // .and()
          // .lastStudiedAtGreaterThan(threeDaysAgo)
          .sortByLastStudiedAtDesc()
          .findAll();
      final entities = DeckMapper.toEntityList(models);
      return right(entities);
    } catch (e) {
      return left(_handleDatabaseError(e, 'get recently studied decks'));
    }
  }

  @override
  Future<Either<Failure, List<Deck>>> searchByName(String query) async {
    try {
      final models = await _isar.deckModels
          .where()
          // .nameContains(query, caseSensitive: false)
          // .or()
          // .descriptionContains(query, caseSensitive: false)
          .findAll();
      final entities = DeckMapper.toEntityList(models);
      return right(entities);
    } catch (e) {
      return left(_handleDatabaseError(e, 'search decks by name'));
    }
  }

  Failure _handleDatabaseError(dynamic error, String operation) {
    if (error is IsarError) {
      return DatabaseFailure('Isar error during $operation: ${error.message}');
    }
    return DatabaseFailure('Unexpected error during $operation: $error');
  }
}
