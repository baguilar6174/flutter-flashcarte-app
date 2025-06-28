import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_flashcarte_app/core/constant.dart';
import 'package:flutter_flashcarte_app/core/localization/localization.dart';
import 'package:flutter_flashcarte_app/core/theme/theme.dart';
import 'package:flutter_flashcarte_app/features/profile/presentation/cubit/cubit.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ActiveTheme selectedTheme = context.select(
      (PreferencesCubit c) => c.state.activeTheme,
    );

    late final List<PreferencesState> listLanguage = [
      PreferencesState(title: Constants.get.english, lang: "en"),
      PreferencesState(title: Constants.get.spanish, lang: "es"),
    ];

    PreferencesState selectedLanguage = listLanguage[0];

    return Scaffold(
      appBar: AppBar(title: Text(Strings.of(context)!.profileTitle)),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Dimens.space12),
          child: Column(
            children: [
              // Theme Dropdown
              DropdownButtonFormField<ActiveTheme>(
                key: const Key("dropdown_theme"),
                value: selectedTheme,
                decoration: InputDecoration(
                  labelText: Strings.of(context)!.chooseTheme,
                  prefixIcon: Icon(Icons.light),
                  border: InputBorder.none,
                ),
                items: ActiveTheme.values
                    .map(
                      (data) => DropdownMenuItem(
                        value: data,
                        child: Text(
                          _getThemeName(data, context),
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (ActiveTheme? value) {
                  if (value != null) {
                    context.read<PreferencesCubit>().updateTheme(value);
                  }
                },
              ),
              SizedBox(height: Dimens.space12),
              // Language Dropdown
              DropdownButtonFormField<PreferencesState>(
                key: const Key("dropdown_language"),
                value: selectedLanguage,
                decoration: InputDecoration(
                  labelText: Strings.of(context)!.chooseLanguage,
                  prefixIcon: Icon(Icons.language_outlined),
                  border: InputBorder.none,
                ),
                items: listLanguage
                    .map(
                      (data) => DropdownMenuItem(
                        value: data,
                        child: Text(
                          data.title ?? "-",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (PreferencesState? value) {
                  if (value != null) {
                    context.read<PreferencesCubit>().updateLanguage(
                      value.lang ?? "en",
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getThemeName(ActiveTheme activeTheme, BuildContext context) {
    if (activeTheme == ActiveTheme.system) {
      return Strings.of(context)!.themeSystem;
    } else if (activeTheme == ActiveTheme.dark) {
      return Strings.of(context)!.themeDark;
    } else {
      return Strings.of(context)!.themeLight;
    }
  }
}
