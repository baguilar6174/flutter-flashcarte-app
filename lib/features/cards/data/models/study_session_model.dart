import 'package:isar/isar.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/entities/enums.dart';
import 'package:flutter_flashcarte_app/features/cards/data/models/models.dart';

part 'study_session_model.g.dart';

@Collection()
class StudySessionModel {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String sessionId;

  late DateTime startedAt;
  DateTime? completedAt;

  @Enumerated(EnumType.name)
  late StudyMode mode;

  // Session statistics
  late int totalCards;
  late int correctAnswers;
  late int incorrectAnswers;
  late int totalTimeSeconds;

  // Settings snapshot
  late int maxNewCards;
  late int maxReviews;
  late bool showHints;

  // 🔗 RELATIONSHIP: StudySession belongs to Deck
  final deck = IsarLink<DeckModel>();

  // 🔗 RELATIONSHIP: StudySession has many ReviewResults
  @Backlink(to: 'session')
  final reviews = IsarLinks<ReviewResultModel>();

  StudySession toEntity() {
    return StudySession(
      id: sessionId,
      deckId: deck.value?.deckId ?? '', // Get deckId from linked deck
      startedAt: startedAt,
      completedAt: completedAt,
      mode: mode,
      statistics: SessionStatistics(
        totalCards: totalCards,
        correctAnswers: correctAnswers,
        incorrectAnswers: incorrectAnswers,
        totalTimeSeconds: totalTimeSeconds,
      ),
      settings: StudySettings(
        maxNewCards: maxNewCards,
        maxReviews: maxReviews,
        showHints: showHints,
      ),
    );
  }
}
