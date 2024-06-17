import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:volunteersapp/modules/settings/presentation/state/settings_page_state.dart';

class SettingsCubit extends Cubit<SettingsPageState> {
  SettingsCubit() : super(SettingsPageStateInitial());
}
