import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:volunteersapp/presentation/work/work_page_state.dart';

class WorkCubit extends Cubit<WorkState> {
  WorkCubit() : super(WorkStateInitial());
}
