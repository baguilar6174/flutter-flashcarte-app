import 'package:isar/isar.dart';

import 'package:flutter_flashcarte_app/core/error/failure.dart';

Failure handleDatabaseError(dynamic error, String operation) {
  if (error is IsarError) {
    return DatabaseFailure('Isar error during $operation: ${error.message}');
  }
  return DatabaseFailure('Unexpected error during $operation: $error');
}
