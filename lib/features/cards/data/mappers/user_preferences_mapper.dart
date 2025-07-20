import 'package:flutter_flashcarte_app/features/cards/data/models/models.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';

class UserPreferencesMapper {
  static UserPreferencesModel toModel(UserPreferences entity) {
    return UserPreferencesModel()
      // Study configuration flattened
      ..maxNewCardsPerDay = entity.studyConfig.maxNewCardsPerDay
      ..maxReviewsPerDay = entity.studyConfig.maxReviewsPerDay
      ..showHints = entity.studyConfig.showHints
      ..playAudio = entity.studyConfig.playAudio
      ..reviewOrder = entity.studyConfig.reviewOrder
      ..enableSpacedRepetition = entity.studyConfig.enableSpacedRepetition
      // App configuration flattened
      ..themeMode = entity.appConfig.themeMode
      ..languageCode = entity.appConfig.languageCode
      ..enableNotifications = entity.appConfig.enableNotifications
      ..dailyGoal = entity.appConfig.dailyGoal
      // Session configuration flattened
      ..preferredSessionLengthMinutes =
          entity.sessionConfig.preferredSessionLengthMinutes
      ..enableBreakReminders = entity.sessionConfig.enableBreakReminders;
  }

  static UserPreferences toEntity(UserPreferencesModel model) {
    return UserPreferences(
      studyConfig: StudyConfiguration(
        maxNewCardsPerDay: model.maxNewCardsPerDay,
        maxReviewsPerDay: model.maxReviewsPerDay,
        showHints: model.showHints,
        playAudio: model.playAudio,
        reviewOrder: model.reviewOrder,
        enableSpacedRepetition: model.enableSpacedRepetition,
      ),
      appConfig: AppConfiguration(
        themeMode: model.themeMode,
        languageCode: model.languageCode,
        enableNotifications: model.enableNotifications,
        dailyGoal: model.dailyGoal,
      ),
      sessionConfig: SessionConfiguration(
        preferredSessionLengthMinutes: model.preferredSessionLengthMinutes,
        enableBreakReminders: model.enableBreakReminders,
      ),
    );
  }
}
