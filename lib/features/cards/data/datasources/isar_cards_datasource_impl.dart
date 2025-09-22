import 'package:isar/isar.dart';
import 'package:fpdart/fpdart.dart';

import 'package:flutter_flashcarte_app/core/error/failure.dart';

import 'package:flutter_flashcarte_app/features/cards/data/data.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/domain.dart';

class IsarCardsDatasourceImpl implements CardDataSource {
  final Isar _isar;

  const IsarCardsDatasourceImpl(this._isar);

  @override
  Future<Either<Failure, String>> create(Card card) async {
    try {
      return await _isar.writeTxn(() async {
        // Convert entity to model
        final model = CardMapper.toModel(card);

        // Save card first to get database ID
        await _isar.cardModels.put(model);

        // Set up deck relationships if deckIds are provided
        if (card.deckIds != null && card.deckIds!.isNotEmpty) {
          for (final deckId in card.deckIds!) {
            // Find the deck by deckId
            final deck = await _isar.deckModels
                .where()
                .deckIdEqualTo(deckId)
                .findFirst();

            if (deck != null) {
              // Link card to deck
              model.decks.add(deck);
            }
          }
          // Save the relationships
          await model.decks.save();
        }

        return Right(card.id);
      });
    } catch (e) {
      return Left(handleDatabaseError(e, 'create card'));
    }
  }

  @override
  Future<Either<Failure, List<Card>>> getAll() async {
    try {
      final models = await _isar.cardModels.where().findAll();
      // Load deck relationships for each card
      for (final model in models) {
        await model.decks.load();
      }
      final entities = CardMapper.toEntityList(models);
      return Right(entities);
    } catch (e) {
      return Left(handleDatabaseError(e, 'get all cards'));
    }
  }

  @override
  Future<Either<Failure, Card>> getById(String id) async {
    try {
      final model = await _isar.cardModels
          .where()
          .cardIdEqualTo(id)
          .findFirst();
      if (model == null) {
        return left(const NoDataFailure('Card not found'));
      }
      // Load deck relationships
      await model.decks.load();
      final entity = CardMapper.toEntity(model);
      return right(entity);
    } catch (e) {
      return left(handleDatabaseError(e, 'get card by id'));
    }
  }

  @override
  Future<Either<Failure, Unit>> update(Card card) async {
    try {
      return await _isar.writeTxn(() async {
        // Find existing model
        final existingModel = await _isar.cardModels
            .where()
            .cardIdEqualTo(card.id)
            .findFirst();

        if (existingModel == null) {
          return left(const NoDataFailure('Card not found for update'));
        }

        // Load existing relationships
        await existingModel.decks.load();

        // Update model with new data
        final updatedModel = CardMapper.toModel(card);
        updatedModel.id = existingModel.id; // Preserve database ID

        // Save updated model
        await _isar.cardModels.put(updatedModel);

        // Update deck relationships if provided
        if (card.deckIds != null) {
          // Clear existing relationships
          updatedModel.decks.clear();

          // Add new relationships
          for (final deckId in card.deckIds!) {
            final deck = await _isar.deckModels
                .where()
                .deckIdEqualTo(deckId)
                .findFirst();
            if (deck != null) {
              updatedModel.decks.add(deck);
            }
          }
          await updatedModel.decks.save();
        }

        return Right(unit);
      });
    } catch (e) {
      return Left(handleDatabaseError(e, 'update card'));
    }
  }

  @override
  Future<Either<Failure, Unit>> delete(String id) async {
    try {
      return await _isar.writeTxn(() async {
        final model = await _isar.cardModels
            .where()
            .cardIdEqualTo(id)
            .findFirst();

        if (model == null) {
          return left(const NoDataFailure('Card not found for deletion'));
        }

        // Delete the card
        await _isar.cardModels.delete(model.id);

        return Right(unit);
      });
    } catch (e) {
      return Left(handleDatabaseError(e, 'delete card'));
    }
  }
}
