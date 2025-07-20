// domain/entities/study_settings.dart
import 'package:equatable/equatable.dart';

class StudySettings extends Equatable {
  final int maxNewCards;
  final int maxReviews;
  final bool showHints;

  const StudySettings({
    required this.maxNewCards,
    required this.maxReviews,
    required this.showHints,
  });

  @override
  List<Object?> get props => [maxNewCards, maxReviews, showHints];
}
