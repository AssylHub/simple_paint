import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'injectable_service.config.dart';
import 'manual_register_services.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(preferRelativeImports: true)
Future<void> configureDependencies() async {
  await _initializeTalker();
  getIt.init();
  manualRegisterServices();
}

Future<void> _initializeTalker() async {
  final talker = TalkerFlutter.init();
  getIt.registerLazySingleton<Talker>(() => talker);

  Bloc.observer = TalkerBlocObserver(
    talker: talker,
    settings: const TalkerBlocLoggerSettings(
      enabled: true,
      printEventFullData: true,
      printStateFullData: true,
    ),
  );
}
