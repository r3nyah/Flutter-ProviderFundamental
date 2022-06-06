
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/home_page.dart';
import 'package:providers/user_provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserProvider userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: ()async{
            if(await userProvider.getUser()){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)=> HomePage(),
                ),
              );
            }
          },
          child: Text(
            'Login'
          ),
        ),
      ),
    );
  }
}
