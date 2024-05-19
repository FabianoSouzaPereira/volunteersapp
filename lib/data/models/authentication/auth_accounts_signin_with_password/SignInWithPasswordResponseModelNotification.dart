import 'dart:convert';
import 'package:equatable/equatable.dart';

SignInWithPasswordResponseModelNotification signInWithPasswordResponseModelNotificationFromJson(String str) => SignInWithPasswordResponseModelNotification.fromJson(json.decode(str));

String signInWithPasswordResponseModelNotificationToJson(SignInWithPasswordResponseModelNotification data) => json.encode(data.toJson());

class SignInWithPasswordResponseModelNotification extends Equatable {
  final NotificationCode notificationCode;
  final String notificationMessage;

  const SignInWithPasswordResponseModelNotification({
    required this.notificationCode,
    required this.notificationMessage,
  });

  factory SignInWithPasswordResponseModelNotification.fromJson(Map<String, dynamic> json) {
    return SignInWithPasswordResponseModelNotification(
      notificationCode: NotificationCode.values[json['notificationCode']],
      notificationMessage: json['notificationMessage'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'notificationCode': notificationCode.index,
      'notificationMessage': notificationMessage,
    };
  }

  @override
  List<Object> get props => [notificationCode, notificationMessage];
}

enum NotificationCode {
  NOTIFICATION_CODE_UNSPECIFIED,
  MISSING_LOWERCASE_CHARACTER,
  MISSING_UPPERCASE_CHARACTER,
  MISSING_NUMERIC_CHARACTER,
  MISSING_NON_ALPHANUMERIC_CHARACTER,
  MINIMUM_PASSWORD_LENGTH,
  MAXIMUM_PASSWORD_LENGTH,
}
