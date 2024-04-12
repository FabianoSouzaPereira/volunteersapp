import 'package:dartz/dartz.dart';
import 'package:volunteersapp/data/RestErrorHandler.dart';
import 'package:volunteersapp/data/models/authentication/auth_SignIn_With_Password_Model/request/SignInWithPasswordRequestModel.dart';
import 'package:volunteersapp/domain/repositories/abstractions/abstract_auth_kafka_reposiroty.dart';

class AuthKafkarepositoryImpl implements AbstractAuthKafkaRepository {
  @override
  Future<Either<RestErrorHandler, String>> call(SignInWithPasswordRequestModel request) {
    throw UnimplementedError();
  }
}
