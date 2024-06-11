import 'package:volunteersapp/data/models/user/user_model.dart';

abstract class AbstractUserLocalDatabase {
  Future<List<UserModel>> insert();
  Future<List<UserModel>> update();
  Future<List<UserModel>> delete();
  Future<List<UserModel>> fetch();
}
