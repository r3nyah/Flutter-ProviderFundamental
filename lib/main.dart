import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/counter_provider.dart';
import 'package:providers/home_page.dart';
import 'package:providers/splash_screen.dart';
import 'package:providers/user_provider.dart';
import 'package:providers/weight_provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => WeightProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}