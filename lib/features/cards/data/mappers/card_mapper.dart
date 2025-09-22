import 'package:flutter_flashcarte_app/features/cards/data/models/models.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';

class CardMapper {
  /// Converts domain entity to data model for storage
  static CardModel toModel(Card entity) {
    final model = CardModel()
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
      ..easeFactor = entity.progress.easeFactor;
    return model;
  }

  /// Converts data model to domain entity for business logic
  static Card toEntity(CardModel model) {
    return Card(
      id: model.cardId,
      front: model.front,
      back: model.back,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      deckIds: model.decks.isNotEmpty
          ? model.decks.map((deck) => deck.deckId).toList()
          : null,
      progress: StudyProgress(
        reviewCount: model.reviewCount,
        difficulty: model.difficulty,
        lastReviewedAt: model.lastReviewedAt,
        nextReviewDate: model.nextReviewDate,
        correctStreak: model.correctStreak,
        incorrectCount: model.incorrectCount,
        easeFactor: model.easeFactor,
      ),
    );
  }

  /// Converts list of models to list of entities
  static List<Card> toEntityList(List<CardModel> models) {
    return models.map((model) => toEntity(model)).toList();
  }

  /// Converts list of entities to list of models
  static List<CardModel> toModelList(List<Card> entities) {
    return entities.map((entity) => toModel(entity)).toList();
  }
}
