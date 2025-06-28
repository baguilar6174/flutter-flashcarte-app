// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'strings.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class StringsEs extends Strings {
  StringsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Aplicación de Tarjetas';

  @override
  String get homeRoute => 'Tarjetas';

  @override
  String get profileRoute => 'Perfil';

  @override
  String get homeTitle => 'Tus Tarjetas';

  @override
  String get addFlashcard => 'Agregar Tarjeta';

  @override
  String get markAsLearned => 'Marcar como Aprendida';

  @override
  String get profileTitle => 'Perfil';

  @override
  String get chooseTheme => 'Elegir Tema';

  @override
  String get themeSystem => 'Tema del Sistema';

  @override
  String get themeLight => 'Tema Claro';

  @override
  String get themeDark => 'Tema Oscuro';

  @override
  String get chooseLanguage => 'Elegir Idioma';
}
