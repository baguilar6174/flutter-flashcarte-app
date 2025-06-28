import 'package:get_it/get_it.dart';

import 'package:flutter_flashcarte_app/features/profile/presentation/cubit/cubit.dart';

GetIt sl = GetIt.instance;

Future<void> serviceLocator() async {
  // dataSources
  // repositories
  // use cases
  _cubit();
}

void _cubit() {
  /// Profile
  sl.registerFactory(() => PreferencesCubit());
}
