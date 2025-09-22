import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';

import 'package:flutter_flashcarte_app/core/error/failure.dart';
import 'package:flutter_flashcarte_app/core/usecase/usecase.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/repositories/decks_repository.dart';

class CreateDeck implements UseCase<Deck, CreateDeckParams> {
  final DecksRepository _repo;

  const CreateDeck(this._repo);

  @override
  Future<Either<Failure, Deck>> call(CreateDeckParams params) async {
    final validationResult = _validateInput(params);
    if (validationResult != null) {
      return left(validationResult);
    }

    final now = DateTime.now();
    final deck = Deck(
      id: _generateId(),
      name: params.name.trim(),
      description: params.description?.trim(),
      createdAt: now,
      updatedAt: now,
      cards: [], // Initialize with empty cards list
    );

    return await _repo.create(deck);
  }

  ValidationFailure? _validateInput(CreateDeckParams params) {
    if (params.name.trim().isEmpty) {
      return const ValidationFailure('Deck name cannot be empty');
    }

    if (params.name.trim().length > 100) {
      return const ValidationFailure('Deck name too long (max 100 characters)');
    }

    if (params.description != null && params.description!.trim().length > 500) {
      return const ValidationFailure(
        'Description too long (max 500 characters)',
      );
    }

    return null; // No validation errors
  }

  String _generateId() {
    return DateTime.now().millisecondsSinceEpoch.toString();
  }
}

// Input parameters as a dedicated class
class CreateDeckParams extends Equatable {
  final String name;
  final String? description;

  const CreateDeckParams({required this.name, this.description});

  @override
  List<Object?> get props => [name, description];
}
