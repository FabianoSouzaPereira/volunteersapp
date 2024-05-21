import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class ResetPasswordResponse {
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'requestType')
  final String requestType;

  ResetPasswordResponse({
    required this.email,
    required this.requestType,
  });

  factory ResetPasswordResponse.fromJson(Map<String, dynamic> json) => ResetPasswordResponse(
        email: json["email"],
        requestType: json["requestType"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "requestType": requestType,
      };
}

enum ResetPasswordError {
  OPERATION_NOT_ALLOWED,
  EXPIRED_OOB_CODE,
  INVALID_OOB_CODE,
  USER_DISABLED,
}
