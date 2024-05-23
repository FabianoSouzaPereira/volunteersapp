import 'package:volunteersapp/data/models/cloud_fire_store/projects/databases/database.dart';
import 'package:volunteersapp/data/models/cloud_fire_store/projects/databases/operations/operation.dart';
import 'package:volunteersapp/domain/repositories/response_data.dart';

abstract class AbstractDatabasesRepository {
  Future<ResponseData<Operation>> create();
  Future<ResponseData<Operation>> delete();
  Future<ResponseData<Operation>> exportDocuments();
  Future<ResponseData<Database>> get();
  Future<ResponseData<Operation>> importDocuments();
  Future<ResponseData<Operation>> list();
  Future<ResponseData<Operation>> patch();
  Future<ResponseData<Operation>> restore();
}
