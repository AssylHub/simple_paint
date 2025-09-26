import 'package:fpdart/fpdart.dart';
import 'package:simple_paint/src/core/exceptions/domain_exception.dart';
import 'package:simple_paint/src/features/auth/data/models/user_dto.dart';
import 'package:simple_paint/src/features/auth/domain/requests/auth_request.dart';

abstract interface class IAuthRemote {
  Future<Either<DomainException, UserDto>> signUp(AuthRequest authRequest);

  Future<Either<DomainException, UserDto>> signIn(AuthRequest authRequest);

  Future<Either<DomainException, Unit>> signOut();
}
