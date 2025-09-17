import 'package:fpdart/fpdart.dart';

import 'package:flutter_flashcarte_app/core/error/failure.dart';
import 'package:flutter_flashcarte_app/core/usecase/usecase.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/repositories/flashcard_repository.dart';

class GetAllCards implements UseCase<List<Flashcard>, NoParams> {
  final FlashcardRepository _repo;

  const GetAllCards(this._repo);

  @override
  Future<Either<Failure, List<Flashcard>>> call(NoParams params) async {
    return await _repo.getAll();
  }
}
