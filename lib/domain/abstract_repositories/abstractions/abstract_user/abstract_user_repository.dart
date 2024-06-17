import 'package:volunteersapp/data/models/user/user_model.dart';
import 'package:volunteersapp/core/http/response_data.dart';

abstract class AbstractUserRepository {
  Future<ResponseData<UserModel>> insert();
  Future<ResponseData<UserModel>> update();
  Future<ResponseData<UserModel>> delete();
  Future<ResponseData<UserModel>> fetch();
}
