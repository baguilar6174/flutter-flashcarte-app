import 'package:equatable/equatable.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';

class CardEntity extends Equatable {
  final String id;

  // Front
  final String word;
  final String pronunciation;
  // Back
  final String definition;
  final String example;

  final DateTime createdAt;
  final DateTime updatedAt;
  final StudyProgress progress;

  /// MANY-TO-MANY RELATIONSHIP: One card can belong to many decks
  final List<String>? deckIds;

  const CardEntity({
    required this.id,
    required this.word,
    required this.pronunciation,
    required this.definition,
    required this.example,
    required this.createdAt,
    required this.updatedAt,
    required this.progress,
    this.deckIds,
  });

  // Business logic methods
  bool get isNew => progress.reviewCount == 0;
  bool get isDifficult => progress.difficulty > 0.7;
  bool get isEasy => progress.difficulty < 0.3;

  bool shouldReview({DateTime? currentTime}) {
    final now = currentTime ?? DateTime.now();

    if (isNew) return true;

    if (progress.nextReviewDate == null) return true;

    return progress.nextReviewDate!.isBefore(now) ||
        progress.nextReviewDate!.isAtSameMomentAs(now);
  }

  CardEntity markAsReviewed({
    required bool wasCorrect,
    required DateTime reviewedAt,
  }) {
    final newProgress = progress.updateAfterReview(
      wasCorrect: wasCorrect,
      reviewedAt: reviewedAt,
    );

    return copyWith(progress: newProgress, updatedAt: reviewedAt);
  }

  CardEntity copyWith({
    String? id,
    String? word,
    String? pronunciation,
    String? definition,
    String? example,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? deckId,
    StudyProgress? progress,
    List<String>? deckIds,
  }) {
    return CardEntity(
      id: id ?? this.id,
      word: word ?? this.word,
      pronunciation: pronunciation ?? this.pronunciation,
      definition: definition ?? this.definition,
      example: example ?? this.example,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      progress: progress ?? this.progress,
      deckIds: deckIds ?? this.deckIds,
    );
  }

  @override
  List<Object?> get props => [
    id,
    word,
    pronunciation,
    definition,
    example,
    createdAt,
    updatedAt,
    progress,
    deckIds,
  ];
}
