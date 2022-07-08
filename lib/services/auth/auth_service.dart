import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static login(String username, String password) async {}

  static Future<bool> setToken(String token) async {
    var prefs = Get.find<SharedPreferences>();
    return prefs.setString('access_token', token);
  }

  static Future<String> getToken() async {
    var prefs = Get.find<SharedPreferences>();
    var token = prefs.getString('access_token') ?? "";
    return Future.value(token);
  }

  static removeToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  static Future<String> getUniqueName() async {
    var prefs = Get.find<SharedPreferences>();
    var uniqueName = prefs.getString('unique_name') ?? "";
    return Future.value(uniqueName);
  }

  static Future<bool> setUniqueName(String  uniqueName) async {
    var prefs = Get.find<SharedPreferences>();
    return prefs.setString('unique_name',  uniqueName);
  }

  static Future<String> getUserId() async {
    var prefs = Get.find<SharedPreferences>();
    var id = prefs.getString('id') ?? "";
    return Future.value(id);
  }

  static Future<bool> setId(String id) async {
    var prefs = Get.find<SharedPreferences>();
    return prefs.setString('id', id);
  }

  static removeUniqueName() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
