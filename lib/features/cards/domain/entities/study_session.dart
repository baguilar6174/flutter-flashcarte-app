// domain/entities/study_session.dart
import 'package:equatable/equatable.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/entities/enums.dart';

class StudySession extends Equatable {
  final String id;
  final String deckId;
  final DateTime startedAt;
  final DateTime? completedAt;
  final StudyMode mode;
  final SessionStatistics statistics;
  final StudySettings settings;

  const StudySession({
    required this.id,
    required this.deckId,
    required this.startedAt,
    this.completedAt,
    required this.mode,
    required this.statistics,
    required this.settings,
  });

  // Business logic methods
  bool get isCompleted => completedAt != null;
  bool get isInProgress => completedAt == null;

  Duration get sessionDuration {
    final endTime = completedAt ?? DateTime.now();
    return endTime.difference(startedAt);
  }

  double get accuracy {
    if (statistics.totalCards == 0) return 0.0;
    return statistics.correctAnswers / statistics.totalCards;
  }

  StudySession complete({required DateTime completedAt}) {
    return copyWith(completedAt: completedAt);
  }

  StudySession copyWith({
    String? id,
    String? deckId,
    DateTime? startedAt,
    DateTime? completedAt,
    StudyMode? mode,
    SessionStatistics? statistics,
    StudySettings? settings,
  }) {
    return StudySession(
      id: id ?? this.id,
      deckId: deckId ?? this.deckId,
      startedAt: startedAt ?? this.startedAt,
      completedAt: completedAt ?? this.completedAt,
      mode: mode ?? this.mode,
      statistics: statistics ?? this.statistics,
      settings: settings ?? this.settings,
    );
  }

  @override
  List<Object?> get props => [
    id,
    deckId,
    startedAt,
    completedAt,
    mode,
    statistics,
    settings,
  ];
}
