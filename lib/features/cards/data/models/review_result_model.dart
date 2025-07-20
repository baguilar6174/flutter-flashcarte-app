import 'package:isar/isar.dart';

import 'package:flutter_flashcarte_app/features/cards/data/models/models.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/entities/enums.dart';

part 'review_result_model.g.dart';

@Collection()
class ReviewResultModel {
  Id id = Isar.autoIncrement;

  @Index()
  late DateTime reviewedAt;

  late bool wasCorrect;
  late int responseTimeMs;

  @Enumerated(EnumType.name)
  late DifficultyRating userRating;

  // 🔗 RELATIONSHIP: ReviewResult belongs to StudySession
  final session = IsarLink<StudySessionModel>();

  // 🔗 RELATIONSHIP: ReviewResult belongs to Flashcard
  final flashcard = IsarLink<FlashcardModel>();

  ReviewResult toEntity() {
    return ReviewResult(
      sessionId: session.value?.sessionId ?? '',
      flashcardId: flashcard.value?.cardId ?? '',
      reviewedAt: reviewedAt,
      wasCorrect: wasCorrect,
      responseTime: Duration(milliseconds: responseTimeMs),
      userRating: userRating,
    );
  }
}
