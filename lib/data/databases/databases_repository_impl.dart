import 'package:volunteersapp/data/models/cloud_fire_store/projects/databases/database.dart';
import 'package:volunteersapp/data/models/cloud_fire_store/projects/databases/operations/operation.dart';
import 'package:volunteersapp/domain/repositories/abstractions/abstract_databases/abstract_databases_repository.dart';
import 'package:volunteersapp/domain/repositories/response_data.dart';

class DataBasesRepository implements AbstractDatabasesRepository {
  @override
  Future<ResponseData<Operation>> create() {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<ResponseData<Operation>> delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<ResponseData<Operation>> exportDocuments() {
    // TODO: implement exportDocuments
    throw UnimplementedError();
  }

  @override
  Future<ResponseData<Database>> get() {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<ResponseData<Operation>> importDocuments() {
    // TODO: implement importDocuments
    throw UnimplementedError();
  }

  @override
  Future<ResponseData<Operation>> list() {
    // TODO: implement list
    throw UnimplementedError();
  }

  @override
  Future<ResponseData<Operation>> patch() {
    // TODO: implement patch
    throw UnimplementedError();
  }

  @override
  Future<ResponseData<Operation>> restore() {
    // TODO: implement restore
    throw UnimplementedError();
  }
}
