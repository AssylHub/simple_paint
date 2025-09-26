part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.failure(String message) = _Failure;
  const factory AuthState.authenticated({required AuthViewModel vm}) =
      _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
}

@freezed
class AuthViewModel with _$AuthViewModel {
  const AuthViewModel._();
  factory AuthViewModel({
    @Default(UserEntity.empty()) UserEntity user,
  }) = _AuthViewModel;
}
