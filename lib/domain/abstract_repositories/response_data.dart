import 'package:equatable/equatable.dart';
import 'package:volunteersapp/presentation/helpers/http_helper.dart';

class ResponseData<T> extends Equatable {
  final T? data;
  final bool? success;
  final bool? error;
  final ResultStatusCode? statusCode;
  final String? errorMessage;

  const ResponseData({
    this.data,
    this.success = false,
    this.error = false,
    this.statusCode,
    this.errorMessage,
  });

  @override
  String toString() {
    return 'ResponseData(data: $data, success: $success, error: $error, statusCode: $statusCode, errorMessage: $errorMessage)';
  }

  @override
  List<Object?> get props => [
        data,
        success,
        error,
        statusCode,
        errorMessage,
      ];
}
