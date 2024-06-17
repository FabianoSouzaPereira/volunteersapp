import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:volunteersapp/modules/notification/presentation/state/notification_page_state.dart';

class NotificationCubit extends Cubit<NotificationPageState> {
  NotificationCubit() : super(NoticationPageInitial());
}
