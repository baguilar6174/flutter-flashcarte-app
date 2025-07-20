import 'package:isar/isar.dart';

import 'package:flutter_flashcarte_app/features/cards/data/models/models.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';

part 'deck_model.g.dart';

@Collection()
class DeckModel {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String deckId;

  late String name;
  late String description;
  late DateTime createdAt;
  late DateTime updatedAt;
  late String colorCode;

  // Statistics (denormalized for performance)
  late int cardCount;
  late int newCardCount;
  late int reviewCardCount;
  late int masteredCardCount;

  // Study statistics
  DateTime? lastStudiedAt;
  late int totalReviews;
  late double averageAccuracy;
  late int totalStudyTimeMinutes;

  // 🔗 RELATIONSHIPS: Deck has many Flashcards
  @Backlink(to: 'deck')
  final flashcards = IsarLinks<FlashcardModel>();

  // 🔗 RELATIONSHIPS: Deck has many StudySessions
  @Backlink(to: 'deck')
  final studySessions = IsarLinks<StudySessionModel>();

  Deck toEntity() {
    return Deck(
      id: deckId,
      name: name,
      description: description,
      createdAt: createdAt,
      updatedAt: updatedAt,
      colorCode: colorCode,
      statistics: DeckStatistics(
        totalCards: cardCount,
        newCards: newCardCount,
        reviewCards: reviewCardCount,
        masteredCards: masteredCardCount,
        lastStudiedAt: lastStudiedAt,
        totalReviews: totalReviews,
        averageAccuracy: averageAccuracy,
        totalStudyTimeMinutes: totalStudyTimeMinutes,
      ),
    );
  }
}
