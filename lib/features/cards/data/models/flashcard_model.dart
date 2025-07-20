import 'package:isar/isar.dart';

import 'package:flutter_flashcarte_app/features/cards/data/models/models.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';

part 'flashcard_model.g.dart';

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

  // Search optimization
  @Index(caseSensitive: false)
  late String searchText;

  // Performance indexes
  @Index()
  late bool isNew;

  @Index()
  late bool needsReview;

  @Index()
  late int difficultyCategory;

  // 🔗 RELATIONSHIP: Flashcard belongs to Deck
  final deck = IsarLink<DeckModel>();

  // 🔗 RELATIONSHIP: Flashcard has many Tags (many-to-many)
  final tags = IsarLinks<TagModel>();

  // 🔗 RELATIONSHIP: Flashcard has many ReviewResults
  @Backlink(to: 'flashcard')
  final reviewResults = IsarLinks<ReviewResultModel>();

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
      tagIds: tags.map((tag) => tag.tagId).toList(),
    );
  }
}
