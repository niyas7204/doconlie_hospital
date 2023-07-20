import 'package:shared_preferences/shared_preferences.dart';

Future<void> updateSharedPreference(String token, bool isLoggedin) async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setString('token', token);
  pref.setBool('isLoggedin', isLoggedin);
}
