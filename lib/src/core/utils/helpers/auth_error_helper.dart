import 'package:firebase_auth/firebase_auth.dart';
import 'package:simple_paint/src/core/exceptions/domain_exception.dart';

DomainException mapFirebaseAuthException(FirebaseAuthException e) {
  switch (e.code) {
    case 'email-already-in-use':
      return EmailAlreadyInUseException();
    case 'invalid-email':
      return InvalidEmailException();
    case 'weak-password':
      return WeakPasswordException();
    case 'user-not-found':
    case 'wrong-password':
      return InvalidCredentialsException();
    case 'too-many-requests':
      return TooManyRequestsException();
    case 'network-request-failed':
      return NetworkException(message: 'Network error. Check your connection.');
    default:
      return UnknownException(
        message: '[${e.code}] ${e.message ?? 'Auth error'}',
      );
  }
}
