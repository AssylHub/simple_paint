import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_paint/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:simple_paint/src/features/auth/data/repos/auth_repo_impl.dart';
import 'package:simple_paint/src/features/auth/domain/entities/user.dart';
import 'package:simple_paint/src/features/auth/domain/repos/i_auth_repo.dart';
import 'package:simple_paint/src/features/auth/domain/requests/auth_request.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends BaseBloc<AuthEvent, AuthState> {
  AuthBloc(
    @Named.from(AuthRepoImpl) this._repository,
  ) : super(_Initial());

  final IAuthRepo _repository;
  final AuthViewModel _viewModel = AuthViewModel();

  @override
  Future<void> onEventHandler(AuthEvent event, Emitter emit) async {
    await event.when(
      signUp: (_) => _signUp(event as _SignUp, emit),
      signIn: (_) => _signIn(event as _SignIn, emit),
    );
  }

  Future<void> _signUp(_SignUp event, Emitter emit) async {
    try {
      emit(_Loading());
      final user = await _repository.signUp(event.authRequest);

      user.fold(
        (error) => emit(_Failure(error.message)),
        (UserEntity result) => emit(
          _Authenticated(
            vm: _viewModel.copyWith(user: result),
          ),
        ),
      );
    } catch (e) {
      emit(_Failure(e.toString()));
    }
  }

  Future<void> _signIn(_SignIn event, Emitter emit) async {
    try {
      emit(_Loading());
      final user = await _repository.signIn(event.authRequest);

      user.fold(
        (error) => emit(_Failure(error.message)),
        (UserEntity result) => emit(
          _Authenticated(
            vm: _viewModel.copyWith(user: result),
          ),
        ),
      );
    } catch (e) {
      emit(_Failure(e.toString()));
    }
  }
}
