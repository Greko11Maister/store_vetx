import 'package:flutter/material.dart';
import 'package:store_vtex/src/core/env/env.dart';
import 'package:store_vtex/src/features/app/presentation/app.dart';

import 'injection_container.dart';

void main() {
  sl.registerLazySingleton(() => Env(EnvMode.sandbox));
  runApp(App());
}


