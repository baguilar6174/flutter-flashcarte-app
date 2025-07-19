import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarService {
  static Future<Isar> init() async {
    final dir = await getApplicationDocumentsDirectory();

    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [
          // schemas
        ],
        inspector: true,
        directory: dir.path,
      );
    }
    return await Future.value(Isar.getInstance());
  }
}
