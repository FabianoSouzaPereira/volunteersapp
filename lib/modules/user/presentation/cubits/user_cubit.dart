import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:volunteersapp/modules/user/presentation/state/user_page_state.dart';

class UserCubit extends Cubit<UserPageState> {
  UserCubit() : super(UserPageStateInitial());
}
