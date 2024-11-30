import 'package:json_annotation/json_annotation.dart';
import 'package:volunteersapp/domain/entities/privacy_entity.dart';

part 'privacy_model.g.dart';

@JsonSerializable()
final class PrivacyModel extends PrivacyEntity {
  const PrivacyModel({
    this.profileVisibility = '',
    this.lastSeen = '',
    this.readReceipts = false,
  });

  @override
  final String profileVisibility;

  @override
  final String lastSeen;
  
  @override
  final bool readReceipts;

  factory PrivacyModel.fromJson(Map<String, dynamic> json) => _$PrivacyModelFromJson(json);

  Map<String, dynamic> toJson() => _$PrivacyModelToJson(this);
}