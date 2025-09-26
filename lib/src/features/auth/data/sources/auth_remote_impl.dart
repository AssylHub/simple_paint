import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_paint/src/core/exceptions/domain_exception.dart';
import 'package:simple_paint/src/core/utils/helpers/auth_error_helper.dart';
import 'package:simple_paint/src/features/auth/data/models/user_dto.dart';
import 'package:simple_paint/src/features/auth/data/sources/i_auth_remote.dart';
import 'package:simple_paint/src/features/auth/domain/requests/auth_request.dart';

@named
@LazySingleton(as: IAuthRemote)
class AuthRemoteImpl implements IAuthRemote {
  final FirebaseAuth _auth;

  AuthRemoteImpl(FirebaseAuth this._auth);
  @override
  Future<Either<DomainException, UserDto>> signIn(
    AuthRequest authRequest,
  ) async {
    try {
      final cred = await _auth.signInWithEmailAndPassword(
        email: authRequest.email,
        password: authRequest.password,
      );
      final user = cred.user;
      if (user == null) {
        return Left(UnknownException(message: 'Firebase returned null user'));
      }
      final dto = UserDto(
        uid: user.uid,
        email: user.email,
        displayName: user.displayName,
      );
      return Right(dto);
    } on FirebaseAuthException catch (e) {
      return Left(mapFirebaseAuthException(e));
    } catch (e, st) {
      return Left(UnknownException(message: e.toString(), stackTrace: st));
    }
  }

  @override
  Future<Either<DomainException, Unit>> signOut() async {
    try {
      await _auth.signOut();
      return Right(unit);
    } on FirebaseAuthException catch (e) {
      return Left(mapFirebaseAuthException(e));
    } catch (e, st) {
      return Left(UnknownException(message: e.toString(), stackTrace: st));
    }
  }

  @override
  Future<Either<DomainException, UserDto>> signUp(
    AuthRequest authRequest,
  ) async {
    try {
      final cred = await _auth.createUserWithEmailAndPassword(
        email: authRequest.email,
        password: authRequest.password,
      );
      final user = cred.user;
      if (user == null) {
        return Left(UnknownException(message: 'Firebase returned null user'));
      }
      final dto = UserDto(
        uid: user.uid,
        email: user.email,
        displayName: user.displayName,
      );
      return Right(dto);
    } on FirebaseAuthException catch (e) {
      return Left(mapFirebaseAuthException(e));
    } catch (e, st) {
      return Left(UnknownException(message: e.toString(), stackTrace: st));
    }
  }
}
