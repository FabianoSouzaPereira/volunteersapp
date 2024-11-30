import 'package:volunteersapp/data/models/auth/login_model.dart';
import 'package:volunteersapp/presentation/pages/auth/states/auth_page_state.dart';

class AuthPageLoaded extends AuthPageState {
  final List<LoginModel> listAuthLogin;
  AuthPageLoaded({
    required this.listAuthLogin,
  });

  @override
  List<Object> get props => [listAuthLogin];
}