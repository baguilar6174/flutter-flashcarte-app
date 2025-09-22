import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';

import 'package:flutter_flashcarte_app/core/error/failure.dart';
import 'package:flutter_flashcarte_app/core/usecase/usecase.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/repositories/decks_repository.dart';

class GetDeckById implements UseCase<Deck, GetDeckByIdParams> {
  final DecksRepository _repo;

  const GetDeckById(this._repo);

  @override
  Future<Either<Failure, Deck>> call(GetDeckByIdParams params) async {
    final validationResult = _validateInput(params);
    if (validationResult != null) {
      return left(validationResult);
    }

    return await _repo.getById(params.id);
  }

  ValidationFailure? _validateInput(GetDeckByIdParams params) {
    if (params.id.trim().isEmpty) {
      return const ValidationFailure('Deck ID cannot be empty');
    }

    return null; // No validation errors
  }
}

// Input parameters as a dedicated class
class GetDeckByIdParams extends Equatable {
  final String id;

  const GetDeckByIdParams({required this.id});

  @override
  List<Object?> get props => [id];
}