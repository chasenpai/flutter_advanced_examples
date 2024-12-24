import 'error.dart';

enum NetworkError implements Error {
  timeout,
  noInternet,
  serverError,
  unknown;

  @override
  String toString() {
    return switch(this) {
      NetworkError.timeout => 'request timed out',
      NetworkError.noInternet => 'no internet connection',
      NetworkError.serverError => 'server error occurred',
      NetworkError.unknown => 'unknown error occurred',
    };
  }
}