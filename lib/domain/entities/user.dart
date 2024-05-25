import 'package:volunteersapp/domain/entities/address.dart';

class User {
  final String name;
  final List<int> phones;
  final List<Address> address;
  final List<String> emails;
  final List<String> socialNetwork;

  User({
    required this.name,
    required this.phones,
    required this.address,
    required this.emails,
    required this.socialNetwork,
  });
}
