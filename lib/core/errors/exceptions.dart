class ServerException implements Exception {}

class AuthException implements Exception {}

class CacheException implements Exception {}

class RegisterException implements Exception {
  final String error;

  RegisterException({required this.error});

  List<Object> get props => [error];
}

class BadRequestException implements Exception {
  final e;

  BadRequestException(this.e);

  List<Object> get props => [e];
}
