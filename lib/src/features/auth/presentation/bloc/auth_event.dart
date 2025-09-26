part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signUp({required AuthRequest authRequest}) = _SignUp;
  const factory AuthEvent.signIn({required AuthRequest authRequest}) = _SignIn;
}
