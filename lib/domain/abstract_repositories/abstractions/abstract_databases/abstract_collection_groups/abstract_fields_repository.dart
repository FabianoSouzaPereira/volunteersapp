import 'package:volunteersapp/modules/auth/data/models/cloud_fire_store/projects/databases/database.dart';
import 'package:volunteersapp/core/http/response_data.dart';

abstract class AbstractFieldsRepository {
  Future<ResponseData<Database>> get();
  Future<ResponseData<Database>> list();
  Future<ResponseData<Database>> patch();
}
