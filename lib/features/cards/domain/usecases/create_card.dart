import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';

import 'package:flutter_flashcarte_app/core/error/failure.dart';
import 'package:flutter_flashcarte_app/core/usecase/usecase.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/repositories/cards_repository.dart';

class CreateCard implements UseCase<String, CreateCardParams> {
  final CardsRepository _repo;

  const CreateCard(this._repo);

  @override
  Future<Either<Failure, String>> call(CreateCardParams params) async {
    final validationResult = _validateInput(params);
    if (validationResult != null) {
      return left(validationResult);
    }

    final now = DateTime.now();
    final card = CardEntity(
      id: _generateId(),
      word: params.word.trim(),
      pronunciation: params.pronunciation.trim(),
      definition: params.definition.trim(),
      example: params.example.trim(),
      createdAt: now,
      updatedAt: now,
      deckIds: [params.deckId], // Associate card with deck
      progress: const StudyProgress(
        reviewCount: 0,
        difficulty: 0.5,
        lastReviewedAt: null,
        nextReviewDate: null,
        correctStreak: 0,
        incorrectCount: 0,
        easeFactor: 2.5, // Standard spaced repetition starting factor
      ),
    );

    return await _repo.create(card);
  }

  ValidationFailure? _validateInput(CreateCardParams params) {
    if (params.word.trim().isEmpty) {
      return const ValidationFailure('Word cannot be empty');
    }

    if (params.pronunciation.trim().isEmpty) {
      return const ValidationFailure('Pronunciation cannot be empty');
    }

    if (params.definition.trim().isEmpty) {
      return const ValidationFailure('Definition cannot be empty');
    }

    if (params.example.trim().isEmpty) {
      return const ValidationFailure('Example cannot be empty');
    }

    if (params.deckId.trim().isEmpty) {
      return const ValidationFailure('Deck ID is required');
    }

    if (params.definition.trim().length > 500) {
      return const ValidationFailure(
        'Definition too long (max 500 characters)',
      );
    }

    if (params.example.trim().length > 500) {
      return const ValidationFailure('Example too long (max 500 characters)');
    }

    return null; // No validation errors
  }

  String _generateId() {
    return DateTime.now().millisecondsSinceEpoch.toString();
  }
}

// Input parameters as a dedicated class
class CreateCardParams extends Equatable {
  final String word;
  final String pronunciation;
  final String definition;
  final String example;
  final String deckId;

  const CreateCardParams({
    required this.word,
    required this.pronunciation,
    required this.definition,
    required this.example,
    required this.deckId,
  });

  @override
  List<Object?> get props => [word, pronunciation, definition, example, deckId];
}
