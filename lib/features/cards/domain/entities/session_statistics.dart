// domain/entities/session_statistics.dart
import 'package:equatable/equatable.dart';

class SessionStatistics extends Equatable {
  final int totalCards;
  final int correctAnswers;
  final int incorrectAnswers;
  final int totalTimeSeconds;

  const SessionStatistics({
    this.totalCards = 0,
    this.correctAnswers = 0,
    this.incorrectAnswers = 0,
    this.totalTimeSeconds = 0,
  });

  double get accuracy => totalCards == 0 ? 0.0 : correctAnswers / totalCards;
  Duration get totalTime => Duration(seconds: totalTimeSeconds);

  @override
  List<Object?> get props => [
    totalCards,
    correctAnswers,
    incorrectAnswers,
    totalTimeSeconds,
  ];
}
