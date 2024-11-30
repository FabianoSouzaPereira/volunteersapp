import 'package:volunteersapp/domain/entities/login_entity.dart';
import 'package:volunteersapp/presentation/pages/auth/states/auth_page_state.dart';

class AuthPageInitialState extends AuthPageState {
  AuthPageInitialState(this.data);

  final List<LoginEntity> data;
}