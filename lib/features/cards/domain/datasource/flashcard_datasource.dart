import 'package:fpdart/fpdart.dart';

import 'package:flutter_flashcarte_app/core/error/failure.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';

abstract interface class FlashcardDataSource {
  Future<Either<Failure, String>> create(Flashcard data);
  Future<Either<Failure, List<Flashcard>>> getAll();
  Future<Either<Failure, Flashcard>> getById(String id);
  Future<Either<Failure, Unit>> delete(String id);
  Future<Either<Failure, Unit>> update(Flashcard data);
  Future<Either<Failure, List<Flashcard>>> getByDeckId(String id);
  Future<Either<Failure, List<Flashcard>>> searchByText(String query);
  Future<Either<Failure, List<Flashcard>>> getCardsNeedingReview();
}
