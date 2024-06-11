import 'package:volunteersapp/data/models/cloud_fire_store/projects/databases/database.dart';
import 'package:volunteersapp/domain/abstract_repositories/response_data.dart';

abstract class AbstractFieldsRepository {
  Future<ResponseData<Database>> get();
  Future<ResponseData<Database>> list();
  Future<ResponseData<Database>> patch();
}
