import 'package:dartz/dartz.dart';
import 'package:volunteersapp/data/RestErrorHandler.dart';
import 'package:volunteersapp/modules/auth/data/authentication/auth_signIn_with_password_model/signIn_with_password_request_model.dart';

abstract class AbstractAuthKafkaDatasource {
  Future<Either<RestErrorHandler, String>> call(SignInWithPasswordRequestModel request);
}
