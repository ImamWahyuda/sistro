import 'package:flutter/material.dart';
import 'package:sistro_app/screen/splashscreen.dart';
import 'package:sistro_app/screen/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Membuat SplashScreen',
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage(),
    );
  }
}
