import 'package:equatable/equatable.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';

class Flashcard extends Equatable {
  final String id;
  final String front;
  final String back;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String deckId;
  final StudyProgress progress;
  final List<String> tagIds;

  const Flashcard({
    required this.id,
    required this.front,
    required this.back,
    required this.createdAt,
    required this.updatedAt,
    required this.deckId,
    required this.progress,
    this.tagIds = const [],
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

  Flashcard markAsReviewed({
    required bool wasCorrect,
    required DateTime reviewedAt,
  }) {
    final newProgress = progress.updateAfterReview(
      wasCorrect: wasCorrect,
      reviewedAt: reviewedAt,
    );

    return copyWith(progress: newProgress, updatedAt: reviewedAt);
  }

  Flashcard copyWith({
    String? id,
    String? front,
    String? back,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? deckId,
    StudyProgress? progress,
    List<String>? tagIds,
  }) {
    return Flashcard(
      id: id ?? this.id,
      front: front ?? this.front,
      back: back ?? this.back,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deckId: deckId ?? this.deckId,
      progress: progress ?? this.progress,
      tagIds: tagIds ?? this.tagIds,
    );
  }

  @override
  List<Object?> get props => [
    id,
    front,
    back,
    createdAt,
    updatedAt,
    deckId,
    progress,
    tagIds,
  ];
}
