import 'package:equatable/equatable.dart';

class Flashcard extends Equatable {
  final String id;
  final String front;
  final String back;
  final DateTime createdAt;
  final DateTime? lastReviewedAt;
  final int reviewCount;
  final double difficulty; // 0.0 (easy) to 1.0 (hard)
  final String deckId;

  const Flashcard({
    required this.id,
    required this.front,
    required this.back,
    required this.createdAt,
    this.lastReviewedAt,
    this.reviewCount = 0,
    this.difficulty = 0.5, // Default difficulty
    required this.deckId,
  });

  // Business rules as getters
  bool get isNew => reviewCount == 0;
  bool get isDifficult => difficulty > 0.7;
  bool get isEasy => difficulty < 0.3;

  // Business logic methods
  bool shouldReview({int intervalDays = 1}) {
    if (isNew) return true;
    if (lastReviewedAt == null) return true;
    final daysSinceReview = DateTime.now().difference(lastReviewedAt!).inDays;
    return daysSinceReview >= intervalDays;
  }

  Flashcard markAsReviewed({required bool wasCorrect}) {
    // Spaced repetition logic
    double newDifficulty = difficulty;

    if (wasCorrect) {
      newDifficulty = (difficulty * 0.9).clamp(0.0, 1.0);
    } else {
      newDifficulty = (difficulty * 1.1).clamp(0.0, 1.0);
    }

    return Flashcard(
      id: id,
      front: front,
      back: back,
      createdAt: createdAt,
      lastReviewedAt: DateTime.now(),
      reviewCount: reviewCount + 1,
      difficulty: newDifficulty,
      deckId: deckId,
    );
  }

  @override
  List<Object?> get props => [
    id,
    front,
    back,
    createdAt,
    lastReviewedAt,
    reviewCount,
    difficulty,
    deckId,
  ];
}
