import 'package:dartz/dartz.dart';
import 'package:volunteersapp/data/RestErrorHandler.dart';
import 'package:volunteersapp/data/models/authentication/auth_signIn_with_password_model/signIn_with_password_request_model.dart';
import 'package:volunteersapp/domain/repositories/abstractions/abstract_auth_kafka_reposiroty.dart';

class AuthKafkarepositoryImpl implements AbstractAuthKafkaRepository {
  @override
  Future<Either<RestErrorHandler, String>> call(SignInWithPasswordRequestModel request) {
    throw UnimplementedError();
  }
}
