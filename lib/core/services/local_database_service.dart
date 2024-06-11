import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:volunteersapp/data/models/user/address_model.dart';
import 'package:volunteersapp/data/models/user/user_model.dart';

class DatabaseService {
  static Future<Database> initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "app_database.db");
    return await openDatabase(
      path,
      version: 2,
      onCreate: (Database db, int version) async {
        /*** Users ***/
        await db.execute(
          "CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)",
        );
        await db.execute(
          "CREATE TABLE IF NOT EXISTS user_phones (id INTEGER PRIMARY KEY AUTOINCREMENT, phone INTEGER, user_id INTEGER, FOREIGN KEY (user_id) REFERENCES users(id))",
        );
        await db.execute(
          "CREATE TABLE IF NOT EXISTS user_addresses (id INTEGER PRIMARY KEY AUTOINCREMENT, street TEXT, neighborhood TEXT, city TEXT, state TEXT, zipcode TEXT, country TEXT, user_id INTEGER, FOREIGN KEY (user_id) REFERENCES users(id))",
        );
        await db.execute(
          "CREATE TABLE IF NOT EXISTS user_emails (id INTEGER PRIMARY KEY AUTOINCREMENT, email TEXT, user_id INTEGER, FOREIGN KEY (user_id) REFERENCES users(id))",
        );
        await db.execute(
          "CREATE TABLE IF NOT EXISTS user_social_networks (id INTEGER PRIMARY KEY AUTOINCREMENT, social_network TEXT, user_id INTEGER, FOREIGN KEY (user_id) REFERENCES users(id))",
        );
        await db.execute(
          "CREATE TABLE IF NOT EXISTS groups (id INTEGER PRIMARY KEY, name TEXT, description TEXT)",
        );
        /*** DataBaseList ***/
        await db.execute(
          "CREATE TABLE IF NOT EXISTS data_base_lists (id INTEGER PRIMARY KEY AUTOINCREMENT)",
        );
        await db.execute(
          "CREATE TABLE IF NOT EXISTS databases (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, data_base_list_id INTEGER, FOREIGN KEY (data_base_list_id) REFERENCES data_base_lists(id))",
        );
        await db.execute(
          "CREATE TABLE IF NOT EXISTS unreachable (id INTEGER PRIMARY KEY AUTOINCREMENT, address TEXT, data_base_list_id INTEGER, FOREIGN KEY (data_base_list_id) REFERENCES data_base_lists(id))",
        );
      },
      onUpgrade: (Database db, int oldVersion, int newVersion) async {
        if (oldVersion < 2) {
          await db.execute(
            "CREATE TABLE IF NOT EXISTS groups (id INTEGER PRIMARY KEY, name TEXT, description TEXT)",
          );
          await db.execute(
            "CREATE TABLE IF NOT EXISTS groups (id INTEGER PRIMARY KEY, name TEXT, description TEXT)",
          );
          //DataBaseList
          await db.execute(
            "CREATE TABLE IF NOT EXISTS data_base_lists (id INTEGER PRIMARY KEY AUTOINCREMENT)",
          );
          await db.execute(
            "CREATE TABLE IF NOT EXISTS databases (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, data_base_list_id INTEGER, FOREIGN KEY (data_base_list_id) REFERENCES data_base_lists(id))",
          );
          await db.execute(
            "CREATE TABLE IF NOT EXISTS unreachable (id INTEGER PRIMARY KEY AUTOINCREMENT, address TEXT, data_base_list_id INTEGER, FOREIGN KEY (data_base_list_id) REFERENCES data_base_lists(id))",
          );
        }
        // Adicionar mais condições conforme a necessidade para futuras atualizações
      },
    );
  }

  static Future<void> insertUser(Database db, UserModel user) async {
    /*** Inserir na tabela users ***/
    int userId = await db.insert('users', {
      'name': user.name,
    });

    /*** Inserir na tabela user_phones ***/
    for (var phone in user.phones) {
      await db.insert('user_phones', {
        'phone': phone,
        'user_id': userId,
      });
    }

    /*** Inserir na tabela user_addresses ***/
    for (var address in user.address) {
      await db.insert('user_addresses', {
        'street': address.street,
        'neighborhood': address.neighborhood,
        'city': address.city,
        'state': address.state,
        'postal_code': address.zipcode,
        'country': address.country,
        'user_id': userId,
      });
    }

    /*** Inserir na tabela user_emails***/
    for (var email in user.emails) {
      await db.insert('user_emails', {
        'email': email,
        'user_id': userId,
      });
    }

    /*** Inserir na tabela user_social_networks ***/
    for (var socialNetwork in user.socialNetwork) {
      await db.insert('user_social_networks', {
        'social_network': socialNetwork,
        'user_id': userId,
      });
    }
  }

  static Future<List<UserModel>> getUsers(Database db) async {
    List<Map<String, dynamic>> users = await db.query('users');
    List<UserModel> userList = [];

    for (var user in users) {
      int userId = user['id'];

      // Recuperar phones
      List<Map<String, dynamic>> phones = await db.query(
        'user_phones',
        where: 'user_id = ?',
        whereArgs: [userId],
      );
      List<int> phoneList = phones.map((p) => p['phone'] as int).toList();

      // Recuperar addresses
      List<Map<String, dynamic>> addresses = await db.query(
        'user_addresses',
        where: 'user_id = ?',
        whereArgs: [userId],
      );
      List<AddressModel> addressList = addresses.map((a) {
        return AddressModel(
          name: a['name'],
          street: a['street'],
          AddressType: a['city'],
          neighborhood: a['neighborhood'],
          city: a['city'],
          state: a['state'],
          zipcode: a['zipcode'],
          country: a['country'],
        );
      }).toList();

      // Recuperar emails
      List<Map<String, dynamic>> emails = await db.query(
        'user_emails',
        where: 'user_id = ?',
        whereArgs: [userId],
      );
      List<String> emailList = emails.map((e) => e['email'] as String).toList();

      // Recuperar social networks
      List<Map<String, dynamic>> socialNetworks = await db.query(
        'user_social_networks',
        where: 'user_id = ?',
        whereArgs: [userId],
      );
      List<String> socialNetworkList = socialNetworks.map((s) => s['social_network'] as String).toList();

      // Criar o UserModel
      userList.add(UserModel(
        user['name'],
        phoneList,
        addressList,
        emailList,
        socialNetworkList,
      ));
    }

    return userList;
  }
}
