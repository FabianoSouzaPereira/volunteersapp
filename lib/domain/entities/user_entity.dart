import 'package:volunteersapp/domain/entities/address_entity.dart';

class UserEntity {
  final String name;
  final List<int> phones;
  final List<AddressEntity> address;
  final List<String> emails;
  final List<String> socialNetwork;

  UserEntity({
    required this.name,
    required this.phones,
    required this.address,
    required this.emails,
    required this.socialNetwork,
  });
}
