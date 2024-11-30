import 'package:json_annotation/json_annotation.dart';
import 'package:volunteersapp/data/models/commons/notification_model.dart';
import 'package:volunteersapp/domain/entities/preferences_entity.dart';

part 'preferences_model.g.dart';

@JsonSerializable()
final class PreferencesModel extends PreferencesEntity {
  const PreferencesModel({
      this.language = '',
      this.timezone = '',
      this.notifications = const NotificationsModel(),
  });

  @override
  final String language;

  @override
  final String timezone;
  
  @override
  final NotificationsModel notifications;

  factory PreferencesModel.fromJson(Map<String, dynamic> json) => _$PreferencesModelFromJson(json);

  Map<String, dynamic> toJson() => _$PreferencesModelToJson(this);
}