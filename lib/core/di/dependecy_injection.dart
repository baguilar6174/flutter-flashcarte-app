import 'package:isar/isar.dart';
import 'package:get_it/get_it.dart';

import 'package:flutter_flashcarte_app/core/services/isar.dart';

import 'package:flutter_flashcarte_app/features/profile/presentation/cubit/cubit.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/repositories/cards_repository.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/usecases/usecases.dart';

GetIt sl = GetIt.instance;

Future<void> serviceLocator() async {
  await _initIsar();
  // dataSources
  // repositories
  _useCases();
  _cubit();
}

Future<void> _initIsar() async {
  final isar = await IsarService.init();
  sl.registerSingleton<Isar>(isar);
}

void _useCases() {
  // Cards
  sl.registerLazySingleton(() => CreateFlashcard(sl<FlashcardRepository>()));
}

void _cubit() {
  /// Profile
  sl.registerFactory(() => PreferencesCubit());
}
