import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';

import 'package:flutter_flashcarte_app/core/error/failure.dart';
import 'package:flutter_flashcarte_app/core/usecase/usecase.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/entities/flashcard_entity.dart';
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
    final flashcard = Flashcard(
      id: _generateId(),
      front: params.front.trim(),
      back: params.back.trim(),
      createdAt: DateTime.now(),
      deckId: params.deckId,
      // difficulty defaults to 0.5 in entity constructor
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

  const CreateFlashcardParams({
    required this.front,
    required this.back,
    required this.deckId,
  });

  @override
  List<Object> get props => [front, back, deckId];
}
