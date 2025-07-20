// domain/entities/study_progress.dart
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

  bool get isNew => reviewCount == 0;
  bool get isDifficult => difficulty > 0.7;
  bool get isEasy => difficulty < 0.3;

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
      newDifficulty = (difficulty * 0.9).clamp(0.0, 1.0);
      newEaseFactor = (easeFactor + 0.1).clamp(1.3, 2.5);
    } else {
      newCorrectStreak = 0;
      newIncorrectCount = incorrectCount + 1;
      newDifficulty = (difficulty * 1.2).clamp(0.0, 1.0);
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
        intervalDays = ((reviewCount - 2) * easeFactor).round();
        break;
    }

    return reviewedAt.add(Duration(days: intervalDays));
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
}
