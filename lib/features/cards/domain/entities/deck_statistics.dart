// domain/entities/deck_statistics.dart
import 'package:equatable/equatable.dart';

class DeckStatistics extends Equatable {
  final int totalCards;
  final int newCards;
  final int reviewCards;
  final int masteredCards;
  final DateTime? lastStudiedAt;
  final int totalReviews;
  final double averageAccuracy;
  final int totalStudyTimeMinutes;

  const DeckStatistics({
    this.totalCards = 0,
    this.newCards = 0,
    this.reviewCards = 0,
    this.masteredCards = 0,
    this.lastStudiedAt,
    this.totalReviews = 0,
    this.averageAccuracy = 0.0,
    this.totalStudyTimeMinutes = 0,
  });

  int get cardsInProgress => totalCards - newCards - masteredCards;
  double get progressPercentage =>
      totalCards == 0 ? 0.0 : masteredCards / totalCards;
  bool get hasActivity => totalReviews > 0;

  Duration get totalStudyTime => Duration(minutes: totalStudyTimeMinutes);

  @override
  List<Object?> get props => [
    totalCards,
    newCards,
    reviewCards,
    masteredCards,
    lastStudiedAt,
    totalReviews,
    averageAccuracy,
    totalStudyTimeMinutes,
  ];
}
