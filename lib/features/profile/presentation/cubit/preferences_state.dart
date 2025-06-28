part of 'preferences_cubit.dart';

enum ActiveTheme {
  light(ThemeMode.light),
  dark(ThemeMode.dark),
  system(ThemeMode.system);

  final ThemeMode mode;
  const ActiveTheme(this.mode);
}

class PreferencesState {
  final String? title;
  final String? lang;
  final ActiveTheme activeTheme;

  const PreferencesState({
    this.title,
    this.lang,
    this.activeTheme = ActiveTheme.system,
  });

  PreferencesState copyWith({
    String? title,
    String? lang,
    ActiveTheme? activeTheme,
  }) {
    return PreferencesState(
      title: title ?? this.title,
      lang: lang ?? this.lang,
      activeTheme: activeTheme ?? this.activeTheme,
    );
  }
}
