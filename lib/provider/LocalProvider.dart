import 'package:shared_preferences/shared_preferences.dart';
import 'package:sigve/core/constant.dart';

class LocalProvider {
  Future<bool> saveAccessToken(String jwt) async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    _pref.setString(Constant.ACCESSTOKEN, jwt);
    return true;
  }

  Future<String?> getAccessToken() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    return _pref.getString(Constant.ACCESSTOKEN);
  }

  Future<bool> deleteAccessToken() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    return _pref.clear();
  }
}
