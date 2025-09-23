import 'package:flutter_flashcarte_app/features/cards/data/models/models.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';

class CardMapper {
  /// Converts domain entity to data model for storage
  static CardModel toModel(CardEntity entity) {
    final model = CardModel()
      ..cardId = entity.id
      ..word = entity.word
      ..definition = entity.definition
      ..example = entity.example
      ..pronunciation = entity.pronunciation
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
  static CardEntity toEntity(CardModel model) {
    return CardEntity(
      id: model.cardId,
      word: model.word,
      pronunciation: model.pronunciation,
      definition: model.definition,
      example: model.example,
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
  static List<CardEntity> toEntityList(List<CardModel> models) {
    return models.map((model) => toEntity(model)).toList();
  }

  /// Converts list of entities to list of models
  static List<CardModel> toModelList(List<CardEntity> entities) {
    return entities.map((entity) => toModel(entity)).toList();
  }
}
