import 'package:isar/isar.dart';
import 'package:fpdart/fpdart.dart';

import 'package:flutter_flashcarte_app/core/error/failure.dart';

import 'package:flutter_flashcarte_app/features/cards/data/data.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/domain.dart';

class IsarDecksDatasourceImpl implements DecksDataSource {
  final Isar _isar;

  const IsarDecksDatasourceImpl(this._isar);

  @override
  Future<Either<Failure, String>> create(Deck data) async {
    // TODO: implement create
    throw UnimplementedError();
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
    // TODO: implement getById
    throw UnimplementedError();
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
