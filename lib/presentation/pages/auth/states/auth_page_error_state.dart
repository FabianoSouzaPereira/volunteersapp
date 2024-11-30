import 'package:volunteersapp/presentation/pages/auth/states/auth_page_state.dart';

class AuthPageErrorState extends AuthPageState {
  AuthPageErrorState(this.message);
  
  final String message;
}