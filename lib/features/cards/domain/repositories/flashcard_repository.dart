import 'package:fpdart/fpdart.dart';

import 'package:flutter_flashcarte_app/core/error/failure.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/entities/flashcard_entity.dart';

abstract interface class FlashcardRepository {
  Future<Either<Failure, String>> create(Flashcard data);
  Future<Either<Failure, List<Flashcard>>> getAll();
  Future<Either<Failure, Flashcard>> getById(int id);
  Future<Either<Failure, Unit>> delete(int id);
  Future<Either<Failure, Flashcard>> update(Flashcard data);
}
