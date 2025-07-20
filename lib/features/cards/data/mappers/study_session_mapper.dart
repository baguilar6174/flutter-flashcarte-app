import 'package:flutter_flashcarte_app/features/cards/data/models/models.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';

class StudySessionMapper {
  static StudySessionModel toModel(StudySession entity) {
    return StudySessionModel()
      ..sessionId = entity.id
      ..startedAt = entity.startedAt
      ..completedAt = entity.completedAt
      ..mode = entity.mode
      // Flatten nested statistics object
      ..totalCards = entity.statistics.totalCards
      ..correctAnswers = entity.statistics.correctAnswers
      ..incorrectAnswers = entity.statistics.incorrectAnswers
      ..totalTimeSeconds = entity.statistics.totalTimeSeconds
      // Flatten nested settings object
      ..maxNewCards = entity.settings.maxNewCards
      ..maxReviews = entity.settings.maxReviews
      ..showHints = entity.settings.showHints;
  }

  static StudySession toEntity(StudySessionModel model) {
    return StudySession(
      id: model.sessionId,
      deckId: model.deck.value?.deckId ?? '',
      startedAt: model.startedAt,
      completedAt: model.completedAt,
      mode: model.mode,

      // Reconstruct nested statistics object
      statistics: SessionStatistics(
        totalCards: model.totalCards,
        correctAnswers: model.correctAnswers,
        incorrectAnswers: model.incorrectAnswers,
        totalTimeSeconds: model.totalTimeSeconds,
      ),

      // Reconstruct nested settings object
      settings: StudySettings(
        maxNewCards: model.maxNewCards,
        maxReviews: model.maxReviews,
        showHints: model.showHints,
      ),
    );
  }
}
