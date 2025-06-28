// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'strings.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class StringsEn extends Strings {
  StringsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Flashcard App';

  @override
  String get homeRoute => 'Cards';

  @override
  String get profileRoute => 'Profile';

  @override
  String get homeTitle => 'Your Flashcards';

  @override
  String get addFlashcard => 'Add Flashcard';

  @override
  String get markAsLearned => 'Mark as Learned';

  @override
  String get profileTitle => 'Profile';

  @override
  String get chooseTheme => 'Choose Theme';

  @override
  String get themeSystem => 'Theme System';

  @override
  String get themeLight => 'Theme Light';

  @override
  String get themeDark => 'Theme Dark';

  @override
  String get chooseLanguage => 'Choose Language';
}
