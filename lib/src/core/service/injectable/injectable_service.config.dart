// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../../features/auth/data/repos/auth_repo_impl.dart' as _i566;
import '../../../features/auth/data/sources/auth_remote_impl.dart' as _i416;
import '../../../features/auth/data/sources/i_auth_remote.dart' as _i298;
import '../../../features/auth/domain/repos/i_auth_repo.dart' as _i505;
import '../../../features/editor/data/datasources/remote/canva_remote_impl.dart'
    as _i97;
import '../../../features/editor/data/datasources/remote/i_canva_remote.dart'
    as _i213;
import '../../../features/editor/data/repos/canva_repo_impl.dart' as _i115;
import '../../../features/editor/domain/repos/i_canva_repo.dart' as _i453;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i213.ICanvaRemote>(() => _i97.CanvaRemoteImpl(
          auth: gh<_i59.FirebaseAuth>(),
          firestore: gh<_i974.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i298.IAuthRemote>(
      () => _i416.AuthRemoteImpl(gh<_i59.FirebaseAuth>()),
      instanceName: 'AuthRemoteImpl',
    );
    gh.lazySingleton<_i453.ICanvaRepo>(
        () => _i115.CanvaRepoImpl(gh<_i213.ICanvaRemote>()));
    gh.lazySingleton<_i505.IAuthRepo>(
      () => _i566.AuthRepoImpl(
          gh<_i298.IAuthRemote>(instanceName: 'AuthRemoteImpl')),
      instanceName: 'AuthRepoImpl',
    );
    return this;
  }
}
