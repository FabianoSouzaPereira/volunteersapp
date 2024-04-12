import 'package:dartz/dartz.dart';
import 'package:volunteersapp/data/RestErrorHandler.dart';
import 'package:volunteersapp/data/models/authentication/auth_SignIn_With_Password_Model/request/SignInWithPasswordRequestModel.dart';

abstract class AbstractAuthKafkaDatasource {
  Future<Either<RestErrorHandler, String>> call(SignInWithPasswordRequestModel request);
}
