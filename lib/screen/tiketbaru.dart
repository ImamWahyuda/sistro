import 'package:flutter/material.dart';
import 'package:sistro_app/screen/homepage.dart';

class tiketbaru extends StatefulWidget {
  tiketbaru({Key? key}) : super(key: key);

  @override
  State<tiketbaru> createState() => _tiketbaruState();
}

class _tiketbaruState extends State<tiketbaru> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Tiket Baru"),
          centerTitle: true,
          backgroundColor: Colors.green.shade900,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()))
            },
          )),
    );
  }
}
