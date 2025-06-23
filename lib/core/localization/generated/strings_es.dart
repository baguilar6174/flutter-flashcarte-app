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
  String get homeTitle => 'Tus Tarjetas';

  @override
  String get addFlashcard => 'Agregar Tarjeta';

  @override
  String get markAsLearned => 'Marcar como Aprendida';
}
