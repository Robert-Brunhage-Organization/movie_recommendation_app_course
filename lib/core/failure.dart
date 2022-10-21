class Failure implements Exception {
  final String message;
  final int? code;
  final Exception? exception;
  final StackTrace stackTrace;

  Failure({
    required this.message,
    required this.stackTrace,
    this.code,
    this.exception,
  });

  @override
  String toString() {
    return 'Failure(message: $message, code: $code, exception: $exception, stackTrace: $stackTrace)';
  }
}
