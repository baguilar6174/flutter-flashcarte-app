import 'package:isar/isar.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';
import 'package:flutter_flashcarte_app/features/cards/data/models/models.dart';

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

  // 🔗 RELATIONSHIPS: Deck has many Flashcards
  @Backlink(to: 'deck')
  final flashcards = IsarLinks<FlashcardModel>();

  Deck toEntity() {
    return Deck(
      id: deckId,
      name: name,
      description: description,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
