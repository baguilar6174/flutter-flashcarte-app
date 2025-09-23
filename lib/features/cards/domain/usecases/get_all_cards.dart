import 'package:fpdart/fpdart.dart';

import 'package:flutter_flashcarte_app/core/error/failure.dart';
import 'package:flutter_flashcarte_app/core/usecase/usecase.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/repositories/cards_repository.dart';

class GetAllCards implements UseCase<List<CardEntity>, NoParams> {
  final CardsRepository _repo;

  const GetAllCards(this._repo);

  @override
  Future<Either<Failure, List<CardEntity>>> call(NoParams params) async {
    return await _repo.getAll();
  }
}
