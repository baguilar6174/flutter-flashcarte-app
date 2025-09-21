import 'package:fpdart/fpdart.dart';

import 'package:flutter_flashcarte_app/core/error/failure.dart';
import 'package:flutter_flashcarte_app/core/usecase/usecase.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/repositories/repositories.dart';

class GetAllDecks implements UseCase<List<Deck>, NoParams> {
  final DecksRepository _repo;

  const GetAllDecks(this._repo);

  @override
  Future<Either<Failure, List<Deck>>> call(NoParams params) async {
    return await _repo.getAll();
  }
}
