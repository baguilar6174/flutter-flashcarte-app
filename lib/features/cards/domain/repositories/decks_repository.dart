import 'package:fpdart/fpdart.dart';

import 'package:flutter_flashcarte_app/core/error/failure.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';

abstract interface class DecksRepository {
  Future<Either<Failure, String>> create(Deck data);
  Future<Either<Failure, List<Deck>>> getAll();
  Future<Either<Failure, Deck>> getById(String id);
  Future<Either<Failure, Unit>> delete(String id);
  Future<Either<Failure, Unit>> update(Deck data);
}
