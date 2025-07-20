import 'package:isar/isar.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/entities/enums.dart';

part 'preferences_model.g.dart';

@Collection()
class UserPreferencesModel {
  Id id = Isar.autoIncrement;

  // Study settings
  late int maxNewCardsPerDay;
  late int maxReviewsPerDay;
  late bool showHints;
  late bool playAudio;

  @Enumerated(EnumType.name)
  late StudyOrder reviewOrder;

  late bool enableSpacedRepetition;

  // App settings
  late String themeMode; // 'system', 'light', 'dark'
  late String languageCode;
  late bool enableNotifications;
  late int dailyGoal;

  // Study time preferences
  late int preferredSessionLengthMinutes;
  late bool enableBreakReminders;

  UserPreferences toEntity() {
    return UserPreferences(
      studyConfig: StudyConfiguration(
        maxNewCardsPerDay: maxNewCardsPerDay,
        maxReviewsPerDay: maxReviewsPerDay,
        showHints: showHints,
        playAudio: playAudio,
        reviewOrder: reviewOrder,
        enableSpacedRepetition: enableSpacedRepetition,
      ),
      appConfig: AppConfiguration(
        themeMode: themeMode,
        languageCode: languageCode,
        enableNotifications: enableNotifications,
        dailyGoal: dailyGoal,
      ),
      sessionConfig: SessionConfiguration(
        preferredSessionLengthMinutes: preferredSessionLengthMinutes,
        enableBreakReminders: enableBreakReminders,
      ),
    );
  }
}
