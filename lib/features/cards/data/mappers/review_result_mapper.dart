import 'package:flutter_flashcarte_app/features/cards/data/models/models.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';

class ReviewResultMapper {
  static ReviewResultModel toModel(ReviewResult entity) {
    return ReviewResultModel()
      ..reviewedAt = entity.reviewedAt
      ..wasCorrect = entity.wasCorrect
      ..responseTimeMs = entity
          .responseTime
          .inMilliseconds // Duration → int
      ..userRating = entity.userRating;
  }

  static ReviewResult toEntity(ReviewResultModel model) {
    return ReviewResult(
      sessionId: model.session.value?.sessionId ?? '',
      flashcardId: model.flashcard.value?.cardId ?? '',
      reviewedAt: model.reviewedAt,
      wasCorrect: model.wasCorrect,
      responseTime: Duration(
        milliseconds: model.responseTimeMs,
      ), // int → Duration
      userRating: model.userRating,
    );
  }
}
