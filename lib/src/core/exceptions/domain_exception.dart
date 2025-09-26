sealed class DomainException implements Exception {
  DomainException({required this.message, this.stackTrace});
  String message;
  StackTrace? stackTrace;

  @override
  String toString() {
    String message = this.message;
    return 'Exception: $message';
  }
}

class UnknownException extends DomainException {
  UnknownException({String? message, super.stackTrace})
    : super(message: message ?? 'Unknown Exception');
}

class BadRequest extends DomainException {
  BadRequest({super.stackTrace}) : super(message: 'Bad Request');
}

class UnknownError extends DomainException {
  UnknownError() : super(message: 'Unknown Error');
}

class NoInternetConnectionException extends DomainException {
  NoInternetConnectionException()
    : super(message: 'No Internet Connection Exception');
}

class MapperException extends DomainException {
  MapperException() : super(message: 'Mapper Exception');
}

class NetworkException extends DomainException {
  NetworkException({required super.message, super.stackTrace});
}

class EmailAlreadyInUseException extends DomainException {
  EmailAlreadyInUseException() : super(message: 'Email already in use');
}

class InvalidEmailException extends DomainException {
  InvalidEmailException() : super(message: 'Invalid email');
}

class WeakPasswordException extends DomainException {
  WeakPasswordException() : super(message: 'Weak password');
}

class InvalidCredentialsException extends DomainException {
  InvalidCredentialsException() : super(message: 'Invalid credentials');
}

class TooManyRequestsException extends DomainException {
  TooManyRequestsException() : super(message: 'Too many attempts. Try later.');
}
