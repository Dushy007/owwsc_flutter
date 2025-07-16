class ApiException implements Exception {
  final String message;
  final int? statusCode;
  final String? type;

  ApiException(this.message, {this.statusCode, this.type});

  @override
  String toString() => 'ApiException: $message (Code: $statusCode)';
}

class NetworkException extends ApiException {
  NetworkException(String message) : super(message, type: 'network');
}

class TimeoutException extends ApiException {
  TimeoutException(String message) : super(message, type: 'timeout');
}

class AuthException extends ApiException {
  AuthException(String message) : super(message, statusCode: 401, type: 'auth');
}