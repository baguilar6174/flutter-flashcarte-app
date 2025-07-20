import 'package:equatable/equatable.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/entities/enums.dart';

class ReviewResult extends Equatable {
  final String sessionId;
  final String flashcardId;
  final DateTime reviewedAt;
  final bool wasCorrect;
  final Duration responseTime;
  final DifficultyRating userRating;

  const ReviewResult({
    required this.sessionId,
    required this.flashcardId,
    required this.reviewedAt,
    required this.wasCorrect,
    required this.responseTime,
    required this.userRating,
  });

  // Business logic methods
  bool get wasQuick => responseTime < const Duration(seconds: 3);
  bool get wasSlow => responseTime > const Duration(seconds: 10);
  bool get wasNormalSpeed => !wasQuick && !wasSlow;

  @override
  List<Object?> get props => [
    sessionId,
    flashcardId,
    reviewedAt,
    wasCorrect,
    responseTime,
    userRating,
  ];
}
