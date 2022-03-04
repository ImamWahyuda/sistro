import 'package:flutter/material.dart';
import 'package:sistro_app/screen/pesantiket.dart';
import 'package:sistro_app/screen/homepage.dart';

class tiketbaru extends StatefulWidget {
  tiketbaru({Key? key}) : super(key: key);

  @override
  State<tiketbaru> createState() => _tiketbaruState();
}

class _tiketbaruState extends State<tiketbaru> {
  List<Widget> cards = new List.generate(20, (i) => new CustomCard()).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("List PO STO Tiket"),
          centerTitle: true,
          backgroundColor: Colors.green.shade900,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()))
            },
          )),
      body: Container(
          child: new ListView(
        children: cards,
      )),
    );
  }
}

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Card(
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
                        left: 9,
                        child: Text(
                          '5000000001',
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
                        top: 30,
                        left: 9,
                        child: Text(
                          '10 Februari 2022',
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
                        top: 18,
                        left: 170,
                        child: IconButton(
                          icon: Icon(Icons.arrow_forward),
                          onPressed: () {},
                        )),
                    Positioned(
                        top: 30,
                        left: 269,
                        child: Text(
                          '28 Februari 2022',
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
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Stack(
                            alignment: AlignmentDirectional.center,
                            children: <Widget>[
                              Positioned(
                                top: 60,
                                left: 0,
                                child: Container(
                                  height: 1.0,
                                  width: 400.0,
                                  color: Colors.black,
                                ),
                              ),
                              Positioned(
                                  top: 67,
                                  left: 0,
                                  child: Text(
                                    'Plant',
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
                                  left: 100,
                                  child: Text(
                                    'Pupuk Kunjang',
                                    textAlign: TextAlign.center,
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
                                  top: 90,
                                  left: 0,
                                  child: Text(
                                    'Tipe',
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
                                  top: 90,
                                  left: 100,
                                  child: Text(
                                    'Truk ke GP',
                                    textAlign: TextAlign.center,
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
                                  top: 110,
                                  left: 0,
                                  child: Text(
                                    'Tujuan',
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
                                  top: 110,
                                  left: 100,
                                  child: Text(
                                    'BKS Semarang',
                                    textAlign: TextAlign.center,
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
                                  top: 130,
                                  left: 0,
                                  child: Text(
                                    'Produk',
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
                                  top: 130,
                                  left: 100,
                                  child: Text(
                                    'Urea SUB @50KG',
                                    textAlign: TextAlign.center,
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
                                  top: 67,
                                  left: 235,
                                  child: Text(
                                    'Qty',
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
                                  left: 345,
                                  child: Text(
                                    '60',
                                    textAlign: TextAlign.center,
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
                                  top: 90,
                                  left: 235,
                                  child: Text(
                                    'Terpesan',
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
                                  top: 90,
                                  left: 345,
                                  child: Text(
                                    '10',
                                    textAlign: TextAlign.center,
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
                                  top: 110,
                                  left: 235,
                                  child: Text(
                                    'Sisa',
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
                                  top: 110,
                                  left: 345,
                                  child: Text(
                                    '50',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(224, 10, 10, 1),
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
                                          left: 0,
                                          right: 10,
                                          bottom: 2,
                                          child: MaterialButton(
                                            onPressed: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          pesan()));
                                            },
                                            height: 33,
                                            minWidth: 100,
                                            shape: const StadiumBorder(),
                                            color: Colors.green.shade900,
                                            child: const Text(
                                              "Pesan",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ]))),
                            ]))
                  ]),
                ))
          ]))
    ]));
  }
}
