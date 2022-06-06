import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/home_page.dart';
import 'package:providers/login_page.dart';
import 'package:providers/user_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context,listen:false);
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            if (await userProvider.checkToken()){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            }else{
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            }
          },
          child: Text(
            'Get Token',
          ),
        ),
      ),
    );
  }
}
