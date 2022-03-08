import 'package:flutter/material.dart';
import 'package:sistro_app/screen/datatiket.dart';
import 'package:sistro_app/screen/homepage.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CetakTiket extends StatefulWidget {
  CetakTiket({Key? key}) : super(key: key);

  @override
  State<CetakTiket> createState() => _CetakTiketState();
}

class _CetakTiketState extends State<CetakTiket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0), // here the desired height
          child: AppBar(
            backgroundColor: Colors.green.shade900,
            title: Column(
              children: <Widget>[
                Image.asset(
                  'images/logosistro.png',
                  width: 85,
                  height: 26,
                ),
              ],
            ),
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                icon: Icon(Icons.print),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => datatiket()));
                },
              ),
            ],
          ),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                verticalDirection: VerticalDirection.down,
                children: [
              Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Column(children: <Widget>[
                    widget1(Column),
                  ])),
              Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Column(children: <Widget>[
                    widget2(Column),
                  ])),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: widget3(
                    'Kode Booking \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t',
                    'SISTRO_RJ_UQJ1Km2Fq'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: widget3(
                    'Nama Transportir \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t',
                    'Resta Jaya'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: widget3(
                    'Nama Driver \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t',
                    'SIPANDA'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: widget3(
                    'Nopol Armada \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t',
                    'AD 8973 DC'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: widget4(Image),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(children: <Widget>[
                    widget5(Column),
                  ])),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: widget3(
                    'POSTO \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t',
                    '532004887857'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: widget3(
                    'Gudang Asal \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t',
                    'Gudang Muat PKC'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: widget3(
                    'Gudang Tujuan \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t',
                    'BDG 1NAGREG'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: widget3(
                    'Produk \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t',
                    'UREA SUB @50 KG'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: widget3(
                    'Tonase (Ton) \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t',
                    '17'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: widget3(
                    'Tanggal Muat \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t',
                    '3 Februari 2022'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: widget3(
                    'Shift \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t',
                    'Shift 1'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: widget6(Image),
              ),
            ])));
  }
}

Widget widget1(Column) {
  return Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
    Padding(
      padding: const EdgeInsets.only(left: 0),
      child: Container(
        padding: EdgeInsets.only(top: 0),
        margin: EdgeInsets.only(top: 0),
        width: 411.4,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.green.shade900,
        ),
        child: Text("Tiket Pemuatan",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              height: 2,
            )),
      ),
    )
  ]);
}

Widget widget2(Column) {
  return Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
    Padding(
      padding: const EdgeInsets.only(left: 0),
      child: Container(
        padding: EdgeInsets.only(top: 0),
        margin: EdgeInsets.only(top: 0),
        width: 411.4,
        height: 40,
        decoration: BoxDecoration(
          color: Color.fromRGBO(236, 236, 236, 1),
        ),
        child: Text("Detail Transportir",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              height: 1.75,
            )),
      ),
    )
  ]);
}

Widget widget3(String firstText, String secondText) {
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    firstText,
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, right: 0),
                    child: Text(
                      secondText,
                      style:
                          TextStyle(color: Colors.green.shade900, fontSize: 16),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ]);
}

Widget widget4(Image) {
  return Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
    Padding(
        padding: const EdgeInsets.only(top: 0, right: 10),
        child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/kode.png'), fit: BoxFit.fitWidth),
            ))),
  ]);
}

Widget widget5(Column) {
  return Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
    Padding(
      padding: const EdgeInsets.only(left: 0),
      child: Container(
        padding: EdgeInsets.only(top: 0),
        margin: EdgeInsets.only(top: 0),
        width: 411.4,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.green.shade900,
        ),
        child: Text("Detail Delivery Order",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              height: 2,
            )),
      ),
    )
  ]);
}

Widget widget6(Image) {
  return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
    Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Container(
            width: 200,
            height: 75,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/barcode.png'),
                  fit: BoxFit.fitWidth),
            ))),
  ]);
}
