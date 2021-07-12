import 'package:get_it/get_it.dart';

import 'providers/api_provider.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  getIt.registerLazySingleton(() => ApiProvider());
}
