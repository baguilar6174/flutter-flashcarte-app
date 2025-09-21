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
  Future<Either<Failure, String>> create(Card flashcard) async {
    try {
      return await _isar.writeTxn(() async {
        // Convert entity to model
        final model = FlashcardMapper.toModel(flashcard);

        // Set up deck relationship
        // TODO: implement

        // Save flashcard
        await _isar.cardModels.put(model);

        // Save relationships
        // TODO: implement

        return Right(flashcard.id);
      });
    } catch (e) {
      return Left(_handleDatabaseError(e, 'create flashcard'));
    }
  }

  @override
  Future<Either<Failure, List<Card>>> getAll() async {
    try {
      final models = await _isar.cardModels.where().findAll();
      final entities = FlashcardMapper.toEntityList(models);
      return Right(entities);
    } catch (e) {
      return Left(_handleDatabaseError(e, 'get all flashcards'));
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
        return left(const NoDataFailure('Flashcard not found'));
      }
      final entity = FlashcardMapper.toEntity(model);
      return right(entity);
    } catch (e) {
      return left(_handleDatabaseError(e, 'get flashcard by id'));
    }
  }

  @override
  Future<Either<Failure, Unit>> update(Card flashcard) async {
    try {
      return await _isar.writeTxn(() async {
        // Find existing model
        final existingModel = await _isar.cardModels
            .where()
            .cardIdEqualTo(flashcard.id)
            .findFirst();

        if (existingModel == null) {
          return left(const NoDataFailure('Flashcard not found for update'));
        }
        // Update model with new data
        final updatedModel = FlashcardMapper.toModel(flashcard);
        updatedModel.id = existingModel.id; // Preserve database ID

        // Save updated model
        await _isar.cardModels.put(updatedModel);

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
        final model = await _isar.cardModels
            .where()
            .cardIdEqualTo(id)
            .findFirst();

        if (model == null) {
          return left(const NoDataFailure('Flashcard not found for deletion'));
        }

        // Delete the flashcard
        await _isar.cardModels.delete(model.id);

        return Right(unit);
      });
    } catch (e) {
      return Left(_handleDatabaseError(e, 'delete flashcard'));
    }
  }

  Failure _handleDatabaseError(dynamic error, String operation) {
    if (error is IsarError) {
      return DatabaseFailure('Isar error during $operation: ${error.message}');
    }
    return DatabaseFailure('Unexpected error during $operation: $error');
  }
}
