import 'package:providers/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserService {
  getUser() async {
    final user = UserModel(
        name: 'Arian',
        email: 'arian@gmail.com',
        phoneNumber: '0888323215719',
        token: 'asdfghjkl123');

    await saveToken(user.token!);

    return user;
  }

  saveToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', token);
  }

  getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final result = prefs.getString('token');
    return result;
  }
}