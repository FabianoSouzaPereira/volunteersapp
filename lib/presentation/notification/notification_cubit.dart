import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:volunteersapp/presentation/notification/notification_page_state.dart';

class NotificationCubit extends Cubit<NotificationPageState> {
  NotificationCubit() : super(NoticationPageInitial());
}
