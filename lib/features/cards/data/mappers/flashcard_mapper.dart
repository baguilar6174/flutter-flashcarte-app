import 'package:flutter_flashcarte_app/features/cards/data/models/models.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';

class FlashcardMapper {
  /// Converts domain entity to data model for storage
  static FlashcardModel toModel(Flashcard entity) {
    final model = FlashcardModel()
      ..cardId = entity.id
      ..front = entity.front
      ..back = entity.back
      ..createdAt = entity.createdAt
      ..updatedAt = entity.updatedAt
      // Study progress mapping
      ..reviewCount = entity.progress.reviewCount
      ..difficulty = entity.progress.difficulty
      ..lastReviewedAt = entity.progress.lastReviewedAt
      ..nextReviewDate = entity.progress.nextReviewDate
      ..correctStreak = entity.progress.correctStreak
      ..incorrectCount = entity.progress.incorrectCount
      ..easeFactor = entity.progress.easeFactor
      // Search optimization
      ..searchText = _buildSearchText(entity.front, entity.back)
      // Performance indexes
      ..isNew = entity.isNew
      ..needsReview = entity.shouldReview()
      ..difficultyCategory = _calculateDifficultyCategory(
        entity.progress.difficulty,
      );
    return model;
  }

  /// Converts data model to domain entity for business logic
  static Flashcard toEntity(FlashcardModel model) {
    return Flashcard(
      id: model.cardId,
      front: model.front,
      back: model.back,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      deckId: model.deck.value?.deckId ?? '',
      progress: StudyProgress(
        reviewCount: model.reviewCount,
        difficulty: model.difficulty,
        lastReviewedAt: model.lastReviewedAt,
        nextReviewDate: model.nextReviewDate,
        correctStreak: model.correctStreak,
        incorrectCount: model.incorrectCount,
        easeFactor: model.easeFactor,
      ),
      tagIds: model.tags.map((tag) => tag.tagId).toList(),
    );
  }

  /// Converts list of models to list of entities
  static List<Flashcard> toEntityList(List<FlashcardModel> models) {
    return models.map((model) => toEntity(model)).toList();
  }

  /// Converts list of entities to list of models
  static List<FlashcardModel> toModelList(List<Flashcard> entities) {
    return entities.map((entity) => toModel(entity)).toList();
  }

  // Helper methods for data transformation
  static String _buildSearchText(String front, String back) {
    return '${front.toLowerCase()} ${back.toLowerCase()}';
  }

  static int _calculateDifficultyCategory(double difficulty) {
    if (difficulty < 0.33) return 1; // Easy
    if (difficulty < 0.67) return 2; // Medium
    return 3; // Hard
  }
}
