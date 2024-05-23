import 'package:dartz/dartz.dart';
import 'package:volunteersapp/core/http/abstract_http_client.dart';
import 'package:volunteersapp/data/RestErrorHandler.dart';
import 'package:volunteersapp/data/models/authentication/auth_signIn_with_password_model/signIn_with_password_request_model.dart';

abstract class AbstractAuthKafkaRepository {
  AbstractAuthKafkaRepository(AbstractHttpClient client);
  Future<Either<RestErrorHandler, String>> call(SignInWithPasswordRequestModel request);
}
