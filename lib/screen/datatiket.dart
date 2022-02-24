import 'package:flutter/material.dart';
import 'package:sistro_app/screen/homepage.dart';

class datatiket extends StatefulWidget {
  datatiket({Key? key}) : super(key: key);

  @override
  State<datatiket> createState() => _datatiketState();
}

class _datatiketState extends State<datatiket>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  List<Widget> cards = new List.generate(20, (i) => new CustomCard()).toList();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Data Tiket"),
            centerTitle: true,
            backgroundColor: Colors.green.shade900,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage()))
              },
            ),
            bottom: TabBar(
              controller: controller,
              tabs: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Status Tiket", style: TextStyle(fontSize: 15.0)),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Riwayat", style: TextStyle(fontSize: 15.0)),
                ),
              ],
            ),
          ),
          body: TabBarView(
            controller: controller,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Card(
                  color: Colors.yellow,
                  elevation: 8,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.all(20),
                  shadowColor: Colors.green,
                ),
              ),
              Container(
                  child: new ListView(
                children: cards,
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Column(
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.all(7.0),
            child: new Row(
              children: <Widget>[
                Text(
                  "SISTRO_RJ_UQJ1Km2Fq \n\n23 Februari 2022 | 12:21:35",
                  style: TextStyle(
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.bold // default is 0.0
                      ),
                ),
                Text(
                  "        SIPANDA \n\n        AD 8973 DC",
                  style: TextStyle(
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.bold // default is 0.0
                      ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
