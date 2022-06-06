import 'package:flutter/material.dart';
import 'package:providers/user_model.dart';
import 'package:providers/user_service.dart';

class UserProvider extends ChangeNotifier{
  UserModel? user = UserModel();

  Future<bool>getUser() async{
    final result = await UserService().getUser();
    user = result;
    if (result == null){
      return false;
    } else {
      return true;
    }
  }

  Future<bool> checkToken() async {
    final result = await UserService().getToken();
    user!.token = result;

    if (result == null){
      return false;
    } else {
      return true;
    }
  }
}