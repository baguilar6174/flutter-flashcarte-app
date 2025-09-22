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
    final card = Card(
      id: _generateId(),
      front: params.front.trim(),
      back: params.back.trim(),
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
    if (params.front.trim().isEmpty) {
      return const ValidationFailure('Front text cannot be empty');
    }

    if (params.back.trim().isEmpty) {
      return const ValidationFailure('Back text cannot be empty');
    }

    if (params.deckId.trim().isEmpty) {
      return const ValidationFailure('Deck ID is required');
    }

    if (params.front.trim().length > 500) {
      return const ValidationFailure(
        'Front text too long (max 500 characters)',
      );
    }

    if (params.back.trim().length > 500) {
      return const ValidationFailure('Back text too long (max 500 characters)');
    }

    return null; // No validation errors
  }

  String _generateId() {
    return DateTime.now().millisecondsSinceEpoch.toString();
  }
}

// Input parameters as a dedicated class
class CreateCardParams extends Equatable {
  final String front;
  final String back;
  final String deckId;

  const CreateCardParams({
    required this.front,
    required this.back,
    required this.deckId,
  });

  @override
  List<Object?> get props => [front, back, deckId];
}
