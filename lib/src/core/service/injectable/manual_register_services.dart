import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:simple_paint/src/core/service/injectable/injectable_service.dart';
import 'package:simple_paint/src/core/service/injectable/service_register_proxy.dart';
import 'package:simple_paint/src/features/auth/domain/repos/i_auth_repo.dart';
import 'package:simple_paint/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:simple_paint/src/features/editor/domain/repos/i_canva_repo.dart';
import 'package:simple_paint/src/features/editor/presentation/bloc/canva_bloc.dart';

void manualRegisterServices() {
  getIt.registerLazySingleton<FirebaseAuth>(
    () => FirebaseAuth.instance,
  );

  getIt.registerLazySingleton<FirebaseFirestore>(
    () => FirebaseFirestore.instance,
  );

  getIt.registerBloc<AuthBloc>(
    lazy: true,
    () => AuthBloc(
      getIt<IAuthRepo>(instanceName: 'AuthRepoImpl'),
    ),
  );

  getIt.registerBloc<CanvaBloc>(
    lazy: true,
    () => CanvaBloc(
      getIt<ICanvaRepo>(),
    ),
  );
}
