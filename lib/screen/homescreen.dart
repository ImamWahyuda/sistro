import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: const Text('Home'),
      ),
      body: new Center(
        child: new Text(
          'Selamat Belajar Flutter',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
