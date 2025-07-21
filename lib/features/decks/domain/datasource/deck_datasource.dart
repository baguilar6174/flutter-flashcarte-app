import 'package:fpdart/fpdart.dart';

import 'package:flutter_flashcarte_app/core/error/failure.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';

abstract interface class DeckDataSource {
  Future<Either<Failure, String>> create(Deck deck);
  Future<Either<Failure, List<Deck>>> getAll();
  Future<Either<Failure, Deck>> getById(String id);
  Future<Either<Failure, Unit>> update(Deck deck);
  Future<Either<Failure, Unit>> delete(String id);
  Future<Either<Failure, List<Deck>>> getRecentlyStudied();
  Future<Either<Failure, List<Deck>>> searchByName(String query);
}
