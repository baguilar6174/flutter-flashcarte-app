import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'preferences_state.dart';

class PreferencesCubit extends Cubit<PreferencesState> {
  PreferencesCubit() : super(PreferencesState(lang: 'en'));

  void updateTheme(ActiveTheme activeTheme) {
    emit(state.copyWith(activeTheme: activeTheme));
  }

  void updateLanguage(String type) {
    emit(state.copyWith(lang: type));
  }

  ActiveTheme getActiveTheme() {
    final activeTheme = ActiveTheme.values.singleWhere(
      (element) => element.name == (ActiveTheme.system.name),
    );
    emit(state.copyWith(activeTheme: activeTheme));
    return activeTheme;
  }
}
