// domain/entities/deck.dart
import 'package:equatable/equatable.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';

class Deck extends Equatable {
  final String id;
  final String name;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String colorCode;
  final DeckStatistics statistics;

  const Deck({
    required this.id,
    required this.name,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
    required this.colorCode,
    required this.statistics,
  });

  // Business logic methods
  bool get isEmpty => statistics.totalCards == 0;
  bool get hasCards => statistics.totalCards > 0;

  bool get isRecentlyStudied {
    if (statistics.lastStudiedAt == null) return false;
    final oneDayAgo = DateTime.now().subtract(const Duration(days: 1));
    return statistics.lastStudiedAt!.isAfter(oneDayAgo);
  }

  double get completionPercentage {
    if (statistics.totalCards == 0) return 0.0;
    return statistics.masteredCards / statistics.totalCards;
  }

  bool get needsReview => statistics.reviewCards > 0 || statistics.newCards > 0;

  Deck copyWith({
    String? id,
    String? name,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? colorCode,
    DeckStatistics? statistics,
  }) {
    return Deck(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      colorCode: colorCode ?? this.colorCode,
      statistics: statistics ?? this.statistics,
    );
  }

  @override
  List<Object?> get props => [
    id,
    name,
    description,
    createdAt,
    updatedAt,
    colorCode,
    statistics,
  ];
}
