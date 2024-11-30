
import 'package:json_annotation/json_annotation.dart';
import 'package:volunteersapp/domain/entities/address_entity.dart';

part 'address_model.g.dart';

@JsonSerializable()
final class AddressModel extends AddressEntity {
    const AddressModel({
        this.street = '',
        this.city = '',
        this.state = '',
        this.zipCode = '',
        this.country = '',
    });

  @override
  final String street;

  @override
  final String city;

  @override
  final String state;

  @override
  final String zipCode;

  @override
  final String country;

  factory AddressModel.fromJson(Map<String, dynamic> json) => _$AddressModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddressModelToJson(this);
}