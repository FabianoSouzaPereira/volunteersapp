import 'dart:convert';
import 'package:equatable/equatable.dart';

EmailInfo emailInfoFromJson(String str) => EmailInfo.fromJson(json.decode(str));

String emailInfoToJson(EmailInfo data) => json.encode(data.toJson());

class EmailInfo extends Equatable {
  final String emailAddress;

  const EmailInfo({
    required this.emailAddress,
  });

  factory EmailInfo.fromJson(Map<String, dynamic> json) {
    return EmailInfo(
      emailAddress: json['emailAddress'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'emailAddress': emailAddress,
    };
  }

  @override
  List<Object> get props => [emailAddress];
}
