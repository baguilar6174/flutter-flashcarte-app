import 'package:flutter_flashcarte_app/features/cards/data/models/models.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';

extension DeckMapper on Deck {
  DeckModel toModel() => DeckMapperService.toModel(this);
}

class DeckMapperService {
  /// Converts domain entity to data model
  static DeckModel toModel(Deck entity) {
    return DeckModel()
      ..deckId = entity.id
      ..name = entity.name
      ..description = entity.description
      ..createdAt = entity.createdAt
      ..updatedAt = entity.updatedAt
      ..colorCode = entity.colorCode
      // Statistics mapping (denormalized for performance)
      ..cardCount = entity.statistics.totalCards
      ..newCardCount = entity.statistics.newCards
      ..reviewCardCount = entity.statistics.reviewCards
      ..masteredCardCount = entity.statistics.masteredCards
      ..lastStudiedAt = entity.statistics.lastStudiedAt
      ..totalReviews = entity.statistics.totalReviews
      ..averageAccuracy = entity.statistics.averageAccuracy
      ..totalStudyTimeMinutes = entity.statistics.totalStudyTimeMinutes;
  }

  /// Converts data model to domain entity
  static Deck toEntity(DeckModel model) {
    return Deck(
      id: model.deckId,
      name: model.name,
      description: model.description,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      colorCode: model.colorCode,
      statistics: DeckStatistics(
        totalCards: model.cardCount,
        newCards: model.newCardCount,
        reviewCards: model.reviewCardCount,
        masteredCards: model.masteredCardCount,
        lastStudiedAt: model.lastStudiedAt,
        totalReviews: model.totalReviews,
        averageAccuracy: model.averageAccuracy,
        totalStudyTimeMinutes: model.totalStudyTimeMinutes,
      ),
    );
  }

  static List<Deck> toEntityList(List<DeckModel> models) {
    return models.map((model) => toEntity(model)).toList();
  }

  static List<DeckModel> toModelList(List<Deck> entities) {
    return entities.map((entity) => toModel(entity)).toList();
  }
}
