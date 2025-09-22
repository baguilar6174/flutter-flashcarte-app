import 'package:isar/isar.dart';
import 'package:get_it/get_it.dart';

import 'package:flutter_flashcarte_app/core/services/isar.dart';

import 'package:flutter_flashcarte_app/features/profile/presentation/cubit/cubit.dart';

import 'package:flutter_flashcarte_app/features/cards/data/data.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/domain.dart';
import 'package:flutter_flashcarte_app/features/cards/presentation/presentation.dart';

GetIt sl = GetIt.instance;

Future<void> serviceLocator() async {
  await _initIsar();
  _dataSources();
  _repositories();
  _useCases();
  _cubit();
}

Future<void> _initIsar() async {
  final isar = await IsarService.init();
  sl.registerSingleton<Isar>(isar);
}

/// Register repositories
void _repositories() {
  /// Decks
  sl.registerLazySingleton<DecksRepository>(
    () => DecksRepositoryImpl(sl<DecksDataSource>()),
  );

  /// Cards
  sl.registerLazySingleton<CardsRepository>(
    () => CardsRepositoryImpl(sl<CardDataSource>()),
  );
}

/// Register dataSources
void _dataSources() {
  /// Decks
  sl.registerLazySingleton<DecksDataSource>(
    () => IsarDecksDatasourceImpl(sl<Isar>()),
  );

  /// Cards
  sl.registerLazySingleton<CardDataSource>(
    () => IsarCardsDatasourceImpl(sl<Isar>()),
  );
}

void _useCases() {
  // Cards
  sl.registerLazySingleton(() => CreateCard(sl<CardsRepository>()));

  // Decks
  sl.registerLazySingleton(() => GetAllDecks(sl<DecksRepository>()));
}

void _cubit() {
  /// Profile
  sl.registerFactory(() => PreferencesCubit());

  /// Decks
  sl.registerFactory(() => DecksCubit(getAllDecks: sl<GetAllDecks>()));
}
