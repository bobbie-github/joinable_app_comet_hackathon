
abstract class AppException {
  final String message;
  AppException(this.message);
}

class ServerException extends AppException implements Exception {
  ServerException(String message) : super(message);
}

class ServerResponseException extends AppException implements Exception {
  ServerResponseException(String message) : super(message);
}

class CacheException extends AppException implements Exception {
  CacheException(String message) : super(message);
}
