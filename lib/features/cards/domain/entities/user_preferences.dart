import 'package:equatable/equatable.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/entities/enums.dart';

class UserPreferences extends Equatable {
  final StudyConfiguration studyConfig;
  final AppConfiguration appConfig;
  final SessionConfiguration sessionConfig;

  const UserPreferences({
    required this.studyConfig,
    required this.appConfig,
    required this.sessionConfig,
  });

  @override
  List<Object?> get props => [studyConfig, appConfig, sessionConfig];
}

class StudyConfiguration extends Equatable {
  final int maxNewCardsPerDay;
  final int maxReviewsPerDay;
  final bool showHints;
  final bool playAudio;
  final StudyOrder reviewOrder;
  final bool enableSpacedRepetition;

  const StudyConfiguration({
    required this.maxNewCardsPerDay,
    required this.maxReviewsPerDay,
    required this.showHints,
    required this.playAudio,
    required this.reviewOrder,
    required this.enableSpacedRepetition,
  });

  @override
  List<Object?> get props => [
    maxNewCardsPerDay,
    maxReviewsPerDay,
    showHints,
    playAudio,
    reviewOrder,
    enableSpacedRepetition,
  ];
}

class AppConfiguration extends Equatable {
  final String themeMode;
  final String languageCode;
  final bool enableNotifications;
  final int dailyGoal;

  const AppConfiguration({
    required this.themeMode,
    required this.languageCode,
    required this.enableNotifications,
    required this.dailyGoal,
  });

  @override
  List<Object?> get props => [
    themeMode,
    languageCode,
    enableNotifications,
    dailyGoal,
  ];
}

class SessionConfiguration extends Equatable {
  final int preferredSessionLengthMinutes;
  final bool enableBreakReminders;

  const SessionConfiguration({
    required this.preferredSessionLengthMinutes,
    required this.enableBreakReminders,
  });

  @override
  List<Object?> get props => [
    preferredSessionLengthMinutes,
    enableBreakReminders,
  ];
}
