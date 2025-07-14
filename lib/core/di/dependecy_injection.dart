import 'package:get_it/get_it.dart';

import 'package:flutter_flashcarte_app/features/profile/presentation/cubit/cubit.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/repositories/flashcard_repository.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/usecases/usecases.dart';

GetIt sl = GetIt.instance;

Future<void> serviceLocator() async {
  // dataSources
  // repositories
  _useCases();
  _cubit();
}

void _useCases() {
  // Cards
  sl.registerLazySingleton(() => CreateFlashcard(sl<FlashcardRepository>()));
}

void _cubit() {
  /// Profile
  sl.registerFactory(() => PreferencesCubit());
}
