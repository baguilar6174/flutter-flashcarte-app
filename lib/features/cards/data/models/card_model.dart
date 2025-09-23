import 'package:isar/isar.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';
import 'package:flutter_flashcarte_app/features/cards/data/models/models.dart';

part 'card_model.g.dart';

@Collection()
class CardModel {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String cardId;

  late String word;
  late String pronunciation;
  late String definition;
  late String example;

  late DateTime createdAt;
  late DateTime updatedAt;

  // Study progress
  late int reviewCount;
  late double difficulty;
  DateTime? lastReviewedAt;
  DateTime? nextReviewDate;
  late int correctStreak;
  late int incorrectCount;
  late double easeFactor;

  // 🔗 RELATIONSHIP:  MANY-TO-MANY RELATIONSHIP: One card can belong to many decks
  @Backlink(to: 'cards')
  final decks = IsarLinks<DeckModel>();

  // Convert to entity
  CardEntity toEntity() {
    return CardEntity(
      id: cardId,
      word: word,
      pronunciation: pronunciation,
      definition: definition,
      example: example,
      createdAt: createdAt,
      updatedAt: updatedAt,
      progress: StudyProgress(
        reviewCount: reviewCount,
        difficulty: difficulty,
        lastReviewedAt: lastReviewedAt,
        nextReviewDate: nextReviewDate,
        correctStreak: correctStreak,
        incorrectCount: incorrectCount,
        easeFactor: easeFactor,
      ),
    );
  }
}
