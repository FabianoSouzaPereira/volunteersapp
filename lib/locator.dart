import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
//Packets
final sharedPreferences = await SharedPreferences.getInstance();
getIt.registerSingleton<SharedPreferences>(sharedPreferences);


//Core
//Database
//Notify
//Usecases
//Datasources
//Repositories
//Cubits

}