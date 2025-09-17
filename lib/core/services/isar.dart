import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'package:flutter_flashcarte_app/features/cards/data/models/models.dart';

class IsarService {
  static Future<Isar> init() async {
    final dir = await getApplicationDocumentsDirectory();

    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [
          // schemas
          DeckModelSchema,
          FlashcardModelSchema,
        ],
        inspector: true,
        directory: dir.path,
      );
    }
    return await Future.value(Isar.getInstance());
  }
}
