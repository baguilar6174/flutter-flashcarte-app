import 'package:flutter_flashcarte_app/features/cards/data/models/models.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';

class DeckMapper {
  /// Converts domain entity to data model
  static DeckModel toModel(Deck entity) {
    return DeckModel()
      ..deckId = entity.id
      ..name = entity.name
      ..description = entity.description
      ..createdAt = entity.createdAt
      ..updatedAt = entity.updatedAt;
  }

  /// Converts data model to domain entity
  static Deck toEntity(DeckModel model) {
    return Deck(
      id: model.deckId,
      name: model.name,
      description: model.description,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      cards: model.cards.isNotEmpty
          ? model.cards.map((cardModel) => cardModel.toEntity()).toList()
          : null,
    );
  }

  static List<Deck> toEntityList(List<DeckModel> models) {
    return models.map((model) => toEntity(model)).toList();
  }

  static List<DeckModel> toModelList(List<Deck> entities) {
    return entities.map((entity) => toModel(entity)).toList();
  }
}
