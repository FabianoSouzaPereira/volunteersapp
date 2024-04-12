// ignore_for_file: file_names

class RestErrorHandler {
  final String message;
  final dynamic exception;
  final StackTrace stackTrace;

  RestErrorHandler({
    required this.message,
    required this.exception,
    required this.stackTrace,
  });
}
