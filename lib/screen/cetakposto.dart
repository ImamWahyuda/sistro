import 'package:flutter/material.dart';
import 'package:sistro_app/screen/datatiket.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:sistro_app/screen/homepage.dart';

class CetakPosto extends StatefulWidget {
  CetakPosto({Key? key}) : super(key: key);

  @override
  State<CetakPosto> createState() => _CetakPostoState();
}

class _CetakPostoState extends State<CetakPosto> {
  String dropdownValue = '';
  final dateController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    dateController.dispose();
    super.dispose();
  }

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
            )),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                verticalDirection: VerticalDirection.down,
                children: [
              Padding(
                  padding: const EdgeInsets.only(top: 0, left: 0),
                  child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: <Widget>[
                        Positioned(
                            top: 75,
                            right: 5,
                            child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('images/kode.png'),
                                      fit: BoxFit.fitWidth),
                                ))),
                        Padding(
                          padding: const EdgeInsets.only(top: 0),
                          child: Column(children: <Widget>[
                            widget1(
                              'Stock Transport Order',
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: widget1('No. Po 5000000123'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: widget1('Tanggal : 01 Februari 2022'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 7.0, left: 0),
                              child: Container(
                                height: 1.0,
                                width: 400.0,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 3.0,
                              ),
                              child: widget2('Kepada Yth:'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: widget3('RESTA JAYA'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: widget3('Indonesia'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: widget3('Mohon diangkut barang berikut:'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: widget2('Asal Barang'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: widget3('Gudang Muat PKC, PKC'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: widget3('Karawang'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: widget3('Karawang'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: widget3('Indonesia'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: widget2('Tujuan Barang'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: widget3('BKS Cikarang, PKC'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: widget3(
                                  'Jl. Jendral Urip Sumoharjo No 238, Tanjungbaru, '),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child:
                                  widget3('Kec. Cikarang Timur, Kab. Bekasi'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: widget3('Kab. Bekasi'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: widget3('Jawa Barat'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: widget3('Indonesia'),
                            ),
                            /* Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: widget3(
                                  'Moda \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t  Truk'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: widget3(
                                  'Kondisi Penyerahan \t \t \t \t \t \t \t \t Diserahkan di depan pintu gerbang'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: widget3('Referensi'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: widget3(
                                  'Pemilik Barang \t \t \t \t \t \t \t \t \t \t \t \t  PT. Pupuk Sriwidjaja'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: widget3(
                                  'Batas Waktu Pengambilan \t \t  28 Februari 2022'),
                            ),*/
                            Padding(
                              padding: const EdgeInsets.only(top: 7.0, left: 0),
                              child: Container(
                                height: 1.0,
                                width: 400.0,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: widget5(
                                  'Moda \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t',
                                  'Truk'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: widget5(
                                  'Kondisi Penyerahan \t\t\t\t\t\t\t\t\t\t\t\t\t\t',
                                  'Diserahkan di depan pintu gerbang'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: widget5('Referensi', ''),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: widget5(
                                  'Pemilik Barang  \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t',
                                  'PT. Pupuk Sriwidjaja'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: widget5('Batas Waktu Pengambilan  \t\t',
                                  '28 Februari 2022'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 7.0, left: 0),
                              child: Container(
                                height: 1.0,
                                width: 400.0,
                                color: Colors.black,
                              ),
                            ),
                            /*  Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: widget3(
                                  'No \t \t \t \t Nama Barang \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t Qty \t \t \t \t \t \t \t \t Satuan'),
                            ),*/
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child:
                                  widget6('No', 'Nama Barang', 'Qty', 'Satuan'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0, left: 0),
                              child: Container(
                                height: 1.0,
                                width: 400.0,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: widget7(
                                  '1', 'NPK 15-10-12 SUB @50KG', '30', 'TON'),
                            ),
                            /*Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: widget4(
                              '1 \t \t \t \t \t  NPK 15-10-12 SUB @50KG \t \t \t \t \t \t \t \t  30 \t \t \t \t \t \t \t \t \t \tTON'),
                        ),*/
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: widget3(
                                  'Hal-hal lain yang belum tercantum dalam dokumen ini, agar'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: widget3(
                                  'merujuk kepada surat perjanjian antara rekanan dengan '),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: widget3('PT. Pupuk Sriwidjaja Palembang.'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: widget4('Belum Cut Off'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3, left: 35),
                              child: widget3(
                                  'RESTA JAYA \t \t  PT. Pupuk Sriwidjaja Palembang'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 35),
                              child: widget3('......................'),
                            ),
                          ]),
                        )
                      ]))
            ])));
  }
}

Widget widget1(String firstTitle) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              firstTitle,
              style: TextStyle(
                  color: Colors.green.shade900,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget widget2(String firstTitle) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              firstTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    ],
  );
}

Widget widget3(String firstTitle) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              firstTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    ],
  );
}

Widget widget4(String firstTitle) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              firstTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.green.shade900,
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    ],
  );
}

Widget widget5(String firstTitle, String firstDesc) {
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    firstTitle,
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 0),
                    child: Text(
                      firstDesc,
                      style: TextStyle(
                        color: Colors.green.shade900,
                        fontSize: 12,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ]);
}

Widget widget6(
    String firstTitle, String firstDesc, String secondDesc, String thirdDesc) {
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    firstTitle,
                    style: TextStyle(color: Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 20),
                    child: Text(
                      firstDesc,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 128),
                    child: Text(
                      secondDesc,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 70),
                    child: Text(
                      thirdDesc,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ]);
}

Widget widget7(
    String firstTitle, String firstDesc, String secondDesc, String thirdDesc) {
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    firstTitle,
                    style: TextStyle(color: Colors.green.shade900),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 30),
                    child: Text(
                      firstDesc,
                      style: TextStyle(
                        color: Colors.green.shade900,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 42),
                    child: Text(
                      secondDesc,
                      style: TextStyle(
                        color: Colors.green.shade900,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 82),
                    child: Text(
                      thirdDesc,
                      style: TextStyle(
                        color: Colors.green.shade900,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ]);
}
