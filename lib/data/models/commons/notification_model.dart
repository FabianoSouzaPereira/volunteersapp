import 'package:json_annotation/json_annotation.dart';
import 'package:volunteersapp/domain/entities/notification.dart';

part 'notification_model.g.dart';

@JsonSerializable()
final class NotificationsModel extends NotificationsEntity {
    const NotificationsModel({
        this.email = false,
        this.sms = false,
        this.push = false,
    });

  @override
  final bool email;

  @override
  final bool sms;

  @override
  final bool push;

  factory NotificationsModel.fromJson(Map<String, dynamic> json) => _$NotificationsModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationsModelToJson(this);
}