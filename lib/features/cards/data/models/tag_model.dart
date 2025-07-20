import 'package:isar/isar.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';
import 'package:flutter_flashcarte_app/features/cards/data/models/models.dart';

part 'tag_model.g.dart';

@Collection()
class TagModel {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String tagId;

  @Index(caseSensitive: false)
  late String name;

  late String colorCode;
  late DateTime createdAt;
  late int usageCount;

  // 🔗 RELATIONSHIP: Tag has many Flashcards (many-to-many)
  @Backlink(to: 'tags')
  final flashcards = IsarLinks<FlashcardModel>();

  Tag toEntity() {
    return Tag(
      id: tagId,
      name: name,
      colorCode: colorCode,
      createdAt: createdAt,
      usageCount: usageCount,
    );
  }
}
