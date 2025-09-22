import 'package:isar/isar.dart';
import 'package:fpdart/fpdart.dart';

import 'package:flutter_flashcarte_app/core/error/failure.dart';

import 'package:flutter_flashcarte_app/features/cards/data/data.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/domain.dart';

class IsarDecksDatasourceImpl implements DecksDataSource {
  final Isar _isar;

  const IsarDecksDatasourceImpl(this._isar);

  @override
  Future<Either<Failure, Deck>> create(Deck data) async {
    try {
      final model = DeckMapper.toModel(data);

      return await _isar.writeTxn(() async {
        await _isar.deckModels.put(model);
        return Right(data);
      });
    } catch (e) {
      return Left(handleDatabaseError(e, 'create deck'));
    }
  }

  @override
  Future<Either<Failure, List<Deck>>> getAll() async {
    try {
      final models = await _isar.deckModels.where().findAll();
      final entities = DeckMapper.toEntityList(models);
      return Right(entities);
    } catch (e) {
      return Left(handleDatabaseError(e, 'get all decks'));
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
        return Left(const NoDataFailure('Deck not found'));
      }
      // Load card relationships
      await model.cards.load();
      final entity = DeckMapper.toEntity(model);
      return Right(entity);
    } catch (e) {
      return Left(handleDatabaseError(e, 'get deck by id'));
    }
  }

  @override
  Future<Either<Failure, Unit>> delete(String id) async {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> update(Deck data) async {
    // TODO: implement update
    throw UnimplementedError();
  }
}
