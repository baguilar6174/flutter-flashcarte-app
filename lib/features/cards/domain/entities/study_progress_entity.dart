import 'package:equatable/equatable.dart';

class StudyProgress extends Equatable {
  final int reviewCount;
  final double difficulty; // 0.0 (easy) to 1.0 (hard)
  final DateTime? lastReviewedAt;
  final DateTime? nextReviewDate;
  final int correctStreak;
  final int incorrectCount;
  final double easeFactor; // Spaced repetition algorithm factor

  const StudyProgress({
    this.reviewCount = 0,
    this.difficulty = 0.5,
    this.lastReviewedAt,
    this.nextReviewDate,
    this.correctStreak = 0,
    this.incorrectCount = 0,
    this.easeFactor = 2.5,
  });

  // Computed properties
  bool get isNew => reviewCount == 0;
  bool get isDifficult => difficulty > 0.7;
  bool get isEasy => difficulty < 0.3;

  /// Get the number of correct answers
  int get correctCount => reviewCount - incorrectCount;

  /// Get success rate as a percentage
  double get successRate {
    if (reviewCount == 0) return 0.0;
    return (correctCount / reviewCount) * 100;
  }

  /// Check if the card is overdue for review
  bool get isOverdue {
    if (nextReviewDate == null) return false;
    return DateTime.now().isAfter(nextReviewDate!);
  }

  /// Get days until next review (negative if overdue)
  int get daysUntilReview {
    if (nextReviewDate == null) return 0;
    return nextReviewDate!.difference(DateTime.now()).inDays;
  }

  StudyProgress updateAfterReview({
    required bool wasCorrect,
    required DateTime reviewedAt,
  }) {
    double newDifficulty = difficulty;
    int newCorrectStreak = correctStreak;
    int newIncorrectCount = incorrectCount;
    double newEaseFactor = easeFactor;

    if (wasCorrect) {
      newCorrectStreak = correctStreak + 1;
      // Reduce difficulty more gradually for better balance
      newDifficulty = (difficulty * 0.95).clamp(0.0, 1.0);
      newEaseFactor = (easeFactor + 0.1).clamp(1.3, 2.5);
    } else {
      newCorrectStreak = 0;
      newIncorrectCount = incorrectCount + 1;
      // Increase difficulty more gradually
      newDifficulty = (difficulty + 0.1).clamp(0.0, 1.0);
      newEaseFactor = (easeFactor - 0.2).clamp(1.3, 2.5);
    }

    // Calculate next review date using spaced repetition
    final nextReview = _calculateNextReviewDate(
      reviewedAt: reviewedAt,
      easeFactor: newEaseFactor,
      reviewCount: reviewCount + 1,
      wasCorrect: wasCorrect,
    );

    return StudyProgress(
      reviewCount: reviewCount + 1,
      difficulty: newDifficulty,
      lastReviewedAt: reviewedAt,
      nextReviewDate: nextReview,
      correctStreak: newCorrectStreak,
      incorrectCount: newIncorrectCount,
      easeFactor: newEaseFactor,
    );
  }

  /// Calculate next review date based on spaced repetition algorithm
  DateTime _calculateNextReviewDate({
    required DateTime reviewedAt,
    required double easeFactor,
    required int reviewCount,
    required bool wasCorrect,
  }) {
    if (!wasCorrect) {
      // Review again in 1 hour if incorrect
      return reviewedAt.add(const Duration(hours: 1));
    }

    int intervalDays;
    switch (reviewCount) {
      case 1:
        intervalDays = 1;
        break;
      case 2:
        intervalDays = 6;
        break;
      default:
        // Standard SM-2 algorithm interval calculation
        intervalDays = ((reviewCount - 2) * easeFactor).round();
        // Cap the maximum interval to prevent cards from disappearing
        intervalDays = intervalDays.clamp(1, 365); // Max 1 year
        break;
    }

    return reviewedAt.add(Duration(days: intervalDays));
  }

  /// Reset progress to initial state
  StudyProgress reset() {
    return const StudyProgress();
  }

  /// Copy with method for immutable updates
  StudyProgress copyWith({
    int? reviewCount,
    double? difficulty,
    DateTime? lastReviewedAt,
    DateTime? nextReviewDate,
    int? correctStreak,
    int? incorrectCount,
    double? easeFactor,
  }) {
    return StudyProgress(
      reviewCount: reviewCount ?? this.reviewCount,
      difficulty: difficulty ?? this.difficulty,
      lastReviewedAt: lastReviewedAt ?? this.lastReviewedAt,
      nextReviewDate: nextReviewDate ?? this.nextReviewDate,
      correctStreak: correctStreak ?? this.correctStreak,
      incorrectCount: incorrectCount ?? this.incorrectCount,
      easeFactor: easeFactor ?? this.easeFactor,
    );
  }

  @override
  List<Object?> get props => [
    reviewCount,
    difficulty,
    lastReviewedAt,
    nextReviewDate,
    correctStreak,
    incorrectCount,
    easeFactor,
  ];

  @override
  String toString() {
    return 'StudyProgress{reviewCount: $reviewCount, '
        'difficulty: ${difficulty.toStringAsFixed(2)}, '
        'correctStreak: $correctStreak, '
        'successRate: ${successRate.toStringAsFixed(1)}%, '
        'easeFactor: ${easeFactor.toStringAsFixed(1)}}';
  }
}
