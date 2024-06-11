import 'package:volunteersapp/data/models/user/address_model.dart';

class UserModel {
  final String name;
  final List<int> phones;
  final List<AddressModel> address;
  final List<String> emails;
  final List<String> socialNetwork;

  UserModel(this.name, this.phones, this.address, this.emails, this.socialNetwork);
}
