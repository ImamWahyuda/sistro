import 'package:flutter/material.dart';
import 'package:sistro_app/screen/cetak.dart';
import 'package:sistro_app/screen/homepage.dart';
import 'package:sistro_app/screen/detailtiket.dart';
import 'package:sistro_app/screen/cetakposto.dart';

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
  List<Widget> cards2 =
      new List.generate(20, (i) => new CustomCard2()).toList();

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
              Container(
                  child: new ListView(
                children: cards,
              )),
              Container(
                  child: new ListView(
                children: cards2,
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCard2 extends StatelessWidget {
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

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Card(
        child: InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => tiket())); //ganti
      },
      child: new Column(children: <Widget>[
        // Figma Flutter Generator Group27Widget - GROUP
        Container(
            width: 385,
            height: 193,
            child: Stack(children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 385,
                      height: 193,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 385,
                                height: 193,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        offset: Offset(0, 4),
                                        blurRadius: 4)
                                  ],
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  border: Border.all(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    width: 1,
                                  ),
                                ))),
                        Positioned(
                            top: 7,
                            left: 41.0001220703125,
                            child: Text(
                              'Resta Jaya',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                                  ),
                            )),
                        Positioned(
                            top: 37,
                            left: 10.0001220703125,
                            child: Text(
                              'SISTRO_RJ_UQJ1Km2Fq',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                                  ),
                            )),
                        Positioned(
                            top: 155,
                            left: 249,
                            child: Container(
                                width: 121,
                                height: 30,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                    top: 1,
                                    left: 20,
                                    right: 3,
                                    bottom: 2,
                                    child: MaterialButton(
                                      onPressed: () {
                                        showAlert(context);
                                      },
                                      height: 33,
                                      minWidth: 100,
                                      shape: const StadiumBorder(),
                                      color: Colors.green.shade900,
                                      child: const Text(
                                        "Print",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ]))),
                        Positioned(
                            top: 37,
                            left: 269.0001220703125,
                            child: Text(
                              '532004887857',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                                  ),
                            )),
                        Positioned(
                            top: 67,
                            left: 10.0001220703125,
                            child: Text(
                              'UREA SUB @50 KG',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(3, 136, 53, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                                  ),
                            )),
                        Positioned(
                            top: 98,
                            left: 10.0001220703125,
                            child: Text(
                              'SIPANDA',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                                  ),
                            )),
                        Positioned(
                            top: 98,
                            left: 291.0001220703125,
                            child: Text(
                              'AD 8973 DC',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                                  ),
                            )),
                        Positioned(
                            top: 131,
                            left: 10.0001220703125,
                            child: Text(
                              'Status : Telah terverifikasi oleh Admin',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(51, 78, 218, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                                  ),
                            )),
                        Positioned(
                            top: 155,
                            left: 10.0001220703125,
                            child: Text(
                              '23-02-2022',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(160, 150, 150, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                                  ),
                            )),
                        Positioned(
                            top: 123,
                            left: 10,
                            child: Divider(
                                color: Color.fromRGBO(226, 210, 210, 1),
                                thickness: 1)),
                        Positioned(
                            top: 95,
                            left: 10,
                            child: Divider(
                                color: Color.fromRGBO(226, 210, 210, 1),
                                thickness: 1)),
                        Positioned(
                            top: 7,
                            left: 10,
                            child: Text(
                              'RJ',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(160, 150, 150, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                                  ),
                            )),
                      ]))),
            ]))
      ]),
    ));
  }
}

showAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text('Cetak',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Inter',
                  fontSize: 25,
                  fontWeight: FontWeight.bold)),
          CloseButton(
              color: Colors.black,
              onPressed: () {
                Navigator.of(context).pop();
              })
        ]),
        content: Text("Pilih file yang akan Anda Cetak "),
        actions: <Widget>[
          FlatButton(
            child: Text("Cetak Posto", style: TextStyle(color: Colors.white)),
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            color: Colors.green.shade900,
            onPressed: () {
              //Put your code here which you want to execute on No button click.
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CetakPosto()));
            },
          ),
          FlatButton(
            child: Text("Cetak Tiket", style: TextStyle(color: Colors.white)),
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            color: Colors.green.shade900,
            onPressed: () {
              //Put your code here which you want to execute on Cancel button click.
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CetakTiket()));
            },
          ),
        ],
      );
    },
  );
}
