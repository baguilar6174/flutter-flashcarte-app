import 'package:isar/isar.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';
import 'package:flutter_flashcarte_app/features/cards/data/models/models.dart';

part 'card_model.g.dart';

@Collection()
class FlashcardModel {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String cardId;

  late String front;
  late String back;
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

  // 🔗 RELATIONSHIP: Flashcard belongs to Deck
  final deck = IsarLink<DeckModel>();

  // Convert to entity
  Flashcard toEntity() {
    return Flashcard(
      id: cardId,
      front: front,
      back: back,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deckId: deck.value?.deckId ?? '', // Get deckId from linked deck
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
