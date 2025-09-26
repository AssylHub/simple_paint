import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_paint/src/core/exceptions/domain_exception.dart';
import 'package:simple_paint/src/features/auth/data/sources/auth_remote_impl.dart';
import 'package:simple_paint/src/features/auth/data/sources/i_auth_remote.dart';
import 'package:simple_paint/src/features/auth/domain/entities/user.dart';
import 'package:simple_paint/src/features/auth/domain/repos/i_auth_repo.dart';
import 'package:simple_paint/src/features/auth/domain/requests/auth_request.dart';

@named
@LazySingleton(as: IAuthRepo)
class AuthRepoImpl implements IAuthRepo {
  final IAuthRemote _remote;

  AuthRepoImpl(
    @Named.from(AuthRemoteImpl) this._remote,
  );

  @override
  Future<Either<DomainException, UserEntity>> signIn(
      AuthRequest authRequest) async {
    try {
      final result = await _remote.signIn(authRequest);

      return result.fold(
        (error) => Left(error),
        (userDto) => Right(userDto.toEntity()),
      );
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<DomainException, Unit>> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<Either<DomainException, UserEntity>> signUp(
      AuthRequest authRequest) async {
    try {
      final result = await _remote.signUp(authRequest);

      return result.fold(
        (error) => Left(error),
        (userDto) => Right(userDto.toEntity()),
      );
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }
}
