import 'package:equatable/equatable.dart';
import 'package:volunteersapp/modules/auth/data/authentication/auth_login_model.dart';

abstract class AuthPageState extends Equatable {
  @override
  List<Object> get props => [];
}

class AuthPageStateInitial extends AuthPageState {
  final List<AuthLoginModel> listAuthLogin = [];
}

class AuthPageLoading extends AuthPageState {}

class AuthPageLoaded extends AuthPageState {
  final List<AuthLoginModel> listAuthLogin;
  AuthPageLoaded({
    required this.listAuthLogin,
  });

  @override
  List<Object> get props => [listAuthLogin];
}
