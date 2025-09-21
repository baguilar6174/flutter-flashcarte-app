import 'package:equatable/equatable.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';

class Card extends Equatable {
  final String id;
  final String front;
  final String back;
  final DateTime createdAt;
  final DateTime updatedAt;
  final StudyProgress progress;

  /// MANY-TO-MANY RELATIONSHIP: One card can belong to many decks
  final List<String>? deckIds;

  const Card({
    required this.id,
    required this.front,
    required this.back,
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

  Card markAsReviewed({
    required bool wasCorrect,
    required DateTime reviewedAt,
  }) {
    final newProgress = progress.updateAfterReview(
      wasCorrect: wasCorrect,
      reviewedAt: reviewedAt,
    );

    return copyWith(progress: newProgress, updatedAt: reviewedAt);
  }

  Card copyWith({
    String? id,
    String? front,
    String? back,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? deckId,
    StudyProgress? progress,
    List<String>? deckIds,
  }) {
    return Card(
      id: id ?? this.id,
      front: front ?? this.front,
      back: back ?? this.back,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      progress: progress ?? this.progress,
      deckIds: deckIds ?? this.deckIds,
    );
  }

  @override
  List<Object?> get props => [
    id,
    front,
    back,
    createdAt,
    updatedAt,
    progress,
    deckIds,
  ];
}
