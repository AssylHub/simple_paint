import 'package:fpdart/fpdart.dart';
import 'package:simple_paint/src/core/exceptions/domain_exception.dart';
import 'package:simple_paint/src/features/auth/domain/entities/user.dart';
import 'package:simple_paint/src/features/auth/domain/requests/auth_request.dart';

abstract interface class IAuthRepo {
  Future<Either<DomainException, UserEntity>> signUp(AuthRequest authRequest);

  Future<Either<DomainException, UserEntity>> signIn(AuthRequest authRequest);

  Future<Either<DomainException, Unit>> signOut();
}
