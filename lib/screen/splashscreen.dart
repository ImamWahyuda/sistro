import 'package:flutter/material.dart';
import 'package:sistro_app/screen/homescreen.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:sistro_app/screen/login.dart';
import 'package:sistro_app/screen/homepage.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      backgroundColor: Color.fromRGBO(3, 136, 53, 1),
      seconds: 5, //mengatur waktu
      navigateAfterSeconds: HomePage(),
      image: Image.asset('images/logosistro.png'),
      photoSize: 150.0,
    );
  }
}
