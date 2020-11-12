import 'package:shared_preferences/shared_preferences.dart';

class LocalUtils {
  static final String token = "token";

  static LocalUtils _localUtils = LocalUtils._();
  LocalUtils._();

  static LocalUtils getInstance() {
    if (_localUtils == null) {
      _localUtils = LocalUtils._();
    }
    return _localUtils;
  }

  setBool(String key, bool value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool(key, value);
  }

  setString(String key, String value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(key, value);
  }

  setInt(String key, int value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setInt(key, value);
  }

  Future<String> getString(String key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(key);
  }

  getInt(String key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getInt(key);
  }

  getBool(String key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool(key);
  }

  setStringList(String key, List<String> list) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setStringList(key, list);
  }

  getStringList(String key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getStringList(key);
  }
}
