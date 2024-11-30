import 'package:json_annotation/json_annotation.dart';
import 'package:volunteersapp/domain/entities/phone_number_entity.dart';

part 'phone_number_model.g.dart';

@JsonSerializable()
class PhoneNumberModel extends PhoneNumberEntity {
  const PhoneNumberModel({
      this.type = '',
      this.number = '',
  });

  @override
  final String type;
  
  @override
  final String number;

  factory PhoneNumberModel.fromJson(Map<String, dynamic> json) => _$PhoneNumberModelFromJson(json);

  Map<String, dynamic> toJson() => _$PhoneNumberModelToJson(this);
}