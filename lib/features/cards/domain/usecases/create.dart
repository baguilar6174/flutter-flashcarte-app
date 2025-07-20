import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';

import 'package:flutter_flashcarte_app/core/error/failure.dart';
import 'package:flutter_flashcarte_app/core/usecase/usecase.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/repositories/flashcard_repository.dart';

class CreateFlashcard implements UseCase<String, CreateFlashcardParams> {
  final FlashcardRepository _repo;

  const CreateFlashcard(this._repo);

  @override
  Future<Either<Failure, String>> call(CreateFlashcardParams params) async {
    // Step 1: Validate input
    final validationResult = _validateInput(params);
    if (validationResult != null) {
      return left(validationResult);
    }

    // Step 2: Create entity with business logic
    final now = DateTime.now();
    final flashcard = Flashcard(
      id: _generateId(),
      front: params.front.trim(),
      back: params.back.trim(),
      createdAt: now,
      updatedAt: now,
      deckId: params.deckId,
      // ✅ UPDATED: Create initial StudyProgress for new card
      progress: const StudyProgress(
        reviewCount: 0,
        difficulty: 0.5, // Default difficulty for new cards
        lastReviewedAt: null,
        nextReviewDate: null,
        correctStreak: 0,
        incorrectCount: 0,
        easeFactor: 2.5, // Standard spaced repetition starting factor
      ),
      // ✅ UPDATED: Handle tags from params (optional)
      tagIds: params.tagIds ?? [],
    );

    // Step 3: Persist through repository
    return await _repo.create(flashcard);
  }

  ValidationFailure? _validateInput(CreateFlashcardParams params) {
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

    // ✅ NEW: Validate tag IDs if provided
    if (params.tagIds != null) {
      for (final tagId in params.tagIds!) {
        if (tagId.trim().isEmpty) {
          return const ValidationFailure('Tag IDs cannot be empty');
        }
      }
    }

    return null; // No validation errors
  }

  String _generateId() {
    return DateTime.now().millisecondsSinceEpoch.toString();
  }
}

// Input parameters as a dedicated class
class CreateFlashcardParams extends Equatable {
  final String front;
  final String back;
  final String deckId;
  final List<String>? tagIds; // ✅ NEW: Optional tag IDs

  const CreateFlashcardParams({
    required this.front,
    required this.back,
    required this.deckId,
    this.tagIds, // Optional tags
  });

  @override
  List<Object?> get props => [front, back, deckId, tagIds];
}
