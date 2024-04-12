import 'package:dartz/dartz.dart';
import 'package:volunteersapp/core/http/abstract_http_client.dart';
import 'package:volunteersapp/data/RestErrorHandler.dart';
import 'package:volunteersapp/data/models/authentication/auth_SignIn_With_Password_Model/request/SignInWithPasswordRequestModel.dart';

abstract class AbstractAuthKafkaRepository {
  AbstractAuthKafkaRepository(AbstractHttpClient client);
  Future<Either<RestErrorHandler, String>> call(SignInWithPasswordRequestModel request);
}
