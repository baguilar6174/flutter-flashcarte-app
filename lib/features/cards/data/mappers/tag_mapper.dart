import 'package:flutter_flashcarte_app/features/cards/data/models/models.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';

class TagMapper {
  static TagModel toModel(Tag entity) {
    return TagModel()
      ..tagId = entity.id
      ..name = entity.name
      ..colorCode = entity.colorCode
      ..createdAt = entity.createdAt
      ..usageCount = entity.usageCount;
  }

  static Tag toEntity(TagModel model) {
    return Tag(
      id: model.tagId,
      name: model.name,
      colorCode: model.colorCode,
      createdAt: model.createdAt,
      usageCount: model.usageCount,
    );
  }

  /// Special method: Update usage count in model without full conversion
  static void incrementUsageInModel(TagModel model) {
    model.usageCount = model.usageCount + 1;
  }

  /// Batch conversion with validation
  static List<Tag> toEntityListWithValidation(List<TagModel> models) {
    return models
        .where((model) => model.name.isNotEmpty) // Filter invalid
        .map((model) => toEntity(model))
        .toList();
  }
}
