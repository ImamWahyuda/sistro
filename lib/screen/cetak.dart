import 'package:flutter/material.dart';
import 'package:sistro_app/screen/datatiket.dart';
import 'package:sistro_app/screen/homepage.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CetakTiket extends StatelessWidget {
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
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => datatiket()));
                },
              ),
            ],
          ),
        ),
        body: Padding(
            padding: EdgeInsets.only(top: 0),
            child: Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                          width: 425,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.green.shade900,
                          ))),
                  Positioned(
                      top: 5,
                      left: 18,
                      child: Text(
                        'Tiket Pemuatan',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            letterSpacing: 0,
                            height: 1.5 /*PERCENT not supported*/
                            ),
                      )),
                  Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: <Widget>[
                            Positioned(
                                top: 41,
                                left: 0,
                                child: Container(
                                    width: 425,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(236, 236, 236, 1),
                                    ))),
                            Positioned(
                                top: 46,
                                left: 18,
                                child: Text(
                                  'Detail Transportir',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      letterSpacing: 0,
                                      height: 1.5 /*PERCENT not supported*/
                                      ),
                                )),
                            Padding(
                                padding: EdgeInsets.only(top: 0),
                                child: Stack(
                                    alignment: AlignmentDirectional.center,
                                    children: <Widget>[
                                      Positioned(
                                        top: 90,
                                        left: 18,
                                        child: Column(
                                          children: [
                                            Text(
                                              "Kode Booking",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(top: 0),
                                          child: Stack(
                                              alignment:
                                                  AlignmentDirectional.center,
                                              children: <Widget>[
                                                Positioned(
                                                  top: 90,
                                                  right: 18,
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        "SISTRO_RJ_UQJ1Km2Fq",
                                                        textAlign:
                                                            TextAlign.right,
                                                        style: TextStyle(
                                                            color: Colors
                                                                .green.shade900,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            fontSize: 14),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.only(top: 0),
                                                    child: Stack(
                                                        alignment:
                                                            AlignmentDirectional
                                                                .center,
                                                        children: <Widget>[
                                                          Positioned(
                                                            top: 115,
                                                            left: 18,
                                                            child: Column(
                                                              children: [
                                                                Text(
                                                                  "Nama Transportir",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      fontSize:
                                                                          14),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(top: 0),
                                                              child: Stack(
                                                                  alignment:
                                                                      AlignmentDirectional
                                                                          .center,
                                                                  children: <
                                                                      Widget>[
                                                                    Positioned(
                                                                      top: 115,
                                                                      right: 18,
                                                                      child:
                                                                          Column(
                                                                        children: [
                                                                          Text(
                                                                            "Resta Jaya",
                                                                            textAlign:
                                                                                TextAlign.right,
                                                                            style: TextStyle(
                                                                                color: Colors.green.shade900,
                                                                                fontWeight: FontWeight.normal,
                                                                                fontSize: 14),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            top:
                                                                                0),
                                                                        child: Stack(
                                                                            alignment:
                                                                                AlignmentDirectional.center,
                                                                            children: <Widget>[
                                                                              Positioned(
                                                                                top: 140,
                                                                                left: 18,
                                                                                child: Column(
                                                                                  children: [
                                                                                    Text(
                                                                                      "Nama Driver",
                                                                                      textAlign: TextAlign.left,
                                                                                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 14),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                  padding: EdgeInsets.only(top: 0),
                                                                                  child: Stack(alignment: AlignmentDirectional.center, children: <Widget>[
                                                                                    Positioned(
                                                                                      top: 140,
                                                                                      right: 18,
                                                                                      child: Column(
                                                                                        children: [
                                                                                          Text(
                                                                                            "SIPANDA",
                                                                                            textAlign: TextAlign.right,
                                                                                            style: TextStyle(color: Colors.green.shade900, fontWeight: FontWeight.normal, fontSize: 14),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                        padding: EdgeInsets.only(top: 0),
                                                                                        child: Stack(alignment: AlignmentDirectional.center, children: <Widget>[
                                                                                          Positioned(
                                                                                            top: 165,
                                                                                            left: 18,
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Text(
                                                                                                  "Nopol Armada",
                                                                                                  textAlign: TextAlign.left,
                                                                                                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 14),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                              padding: EdgeInsets.only(top: 0),
                                                                                              child: Stack(alignment: AlignmentDirectional.center, children: <Widget>[
                                                                                                Positioned(
                                                                                                  top: 165,
                                                                                                  //   left: 8,
                                                                                                  right: 18,
                                                                                                  child: Column(
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        "AD 8973 DC",
                                                                                                        textAlign: TextAlign.right,
                                                                                                        style: TextStyle(color: Colors.green.shade900, fontWeight: FontWeight.normal, fontSize: 14),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                Positioned(
                                                                                                    top: 190,
                                                                                                    right: 18,
                                                                                                    child: Container(
                                                                                                        width: 95,
                                                                                                        height: 95,
                                                                                                        decoration: BoxDecoration(
                                                                                                          image: DecorationImage(image: AssetImage('images/kode.png'), fit: BoxFit.fitWidth),
                                                                                                        ))),
                                                                                                Padding(
                                                                                                    padding: EdgeInsets.only(top: 0),
                                                                                                    child: Stack(alignment: AlignmentDirectional.center, children: <Widget>[
                                                                                                      Positioned(
                                                                                                          top: 295,
                                                                                                          left: 0,
                                                                                                          child: Container(
                                                                                                              width: 425,
                                                                                                              height: 40,
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: Colors.green.shade900,
                                                                                                              ))),
                                                                                                      Positioned(
                                                                                                          top: 300,
                                                                                                          left: 18,
                                                                                                          child: Text(
                                                                                                            'Detail Delivery Order',
                                                                                                            textAlign: TextAlign.center,
                                                                                                            style: TextStyle(color: Colors.white, fontSize: 20, letterSpacing: 0, height: 1.5 /*PERCENT not supported*/
                                                                                                                ),
                                                                                                          )),
                                                                                                      Padding(
                                                                                                          padding: EdgeInsets.only(top: 0),
                                                                                                          child: Stack(alignment: AlignmentDirectional.center, children: <Widget>[
                                                                                                            Positioned(
                                                                                                              top: 345,
                                                                                                              left: 18,
                                                                                                              child: Column(
                                                                                                                children: [
                                                                                                                  Text(
                                                                                                                    "POSTO",
                                                                                                                    textAlign: TextAlign.left,
                                                                                                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 14),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                            Padding(
                                                                                                                padding: EdgeInsets.only(top: 0),
                                                                                                                child: Stack(alignment: AlignmentDirectional.center, children: <Widget>[
                                                                                                                  Positioned(
                                                                                                                    top: 345,
                                                                                                                    right: 18,
                                                                                                                    child: Column(
                                                                                                                      children: [
                                                                                                                        Text(
                                                                                                                          "532004887857",
                                                                                                                          textAlign: TextAlign.right,
                                                                                                                          style: TextStyle(color: Colors.green.shade900, fontWeight: FontWeight.normal, fontSize: 14),
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  Padding(
                                                                                                                      padding: EdgeInsets.only(top: 0),
                                                                                                                      child: Stack(alignment: AlignmentDirectional.center, children: <Widget>[
                                                                                                                        Positioned(
                                                                                                                          top: 370,
                                                                                                                          left: 18,
                                                                                                                          child: Column(
                                                                                                                            children: [
                                                                                                                              Text(
                                                                                                                                "Gudang Asal",
                                                                                                                                textAlign: TextAlign.left,
                                                                                                                                style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 14),
                                                                                                                              ),
                                                                                                                            ],
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        Padding(
                                                                                                                            padding: EdgeInsets.only(top: 0),
                                                                                                                            child: Stack(alignment: AlignmentDirectional.center, children: <Widget>[
                                                                                                                              Positioned(
                                                                                                                                top: 370,
                                                                                                                                right: 18,
                                                                                                                                child: Column(
                                                                                                                                  children: [
                                                                                                                                    Text(
                                                                                                                                      "Gudang Muat PKC",
                                                                                                                                      textAlign: TextAlign.right,
                                                                                                                                      style: TextStyle(color: Colors.green.shade900, fontWeight: FontWeight.normal, fontSize: 14),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                              Padding(
                                                                                                                                  padding: EdgeInsets.only(top: 0),
                                                                                                                                  child: Stack(alignment: AlignmentDirectional.center, children: <Widget>[
                                                                                                                                    Positioned(
                                                                                                                                      top: 395,
                                                                                                                                      left: 18,
                                                                                                                                      child: Column(
                                                                                                                                        children: [
                                                                                                                                          Text(
                                                                                                                                            "Gudang Tujuan",
                                                                                                                                            textAlign: TextAlign.left,
                                                                                                                                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 14),
                                                                                                                                          ),
                                                                                                                                        ],
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                    Padding(
                                                                                                                                        padding: EdgeInsets.only(top: 0),
                                                                                                                                        child: Stack(alignment: AlignmentDirectional.center, children: <Widget>[
                                                                                                                                          Positioned(
                                                                                                                                            top: 395,
                                                                                                                                            right: 18,
                                                                                                                                            child: Column(
                                                                                                                                              children: [
                                                                                                                                                Text(
                                                                                                                                                  "BDG 1NAGREG",
                                                                                                                                                  textAlign: TextAlign.right,
                                                                                                                                                  style: TextStyle(color: Colors.green.shade900, fontWeight: FontWeight.normal, fontSize: 14),
                                                                                                                                                ),
                                                                                                                                              ],
                                                                                                                                            ),
                                                                                                                                          ),
                                                                                                                                          Padding(
                                                                                                                                              padding: EdgeInsets.only(top: 0),
                                                                                                                                              child: Stack(alignment: AlignmentDirectional.center, children: <Widget>[
                                                                                                                                                Positioned(
                                                                                                                                                  top: 420,
                                                                                                                                                  left: 18,
                                                                                                                                                  child: Column(
                                                                                                                                                    children: [
                                                                                                                                                      Text(
                                                                                                                                                        "Produk",
                                                                                                                                                        textAlign: TextAlign.left,
                                                                                                                                                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 14),
                                                                                                                                                      ),
                                                                                                                                                    ],
                                                                                                                                                  ),
                                                                                                                                                ),
                                                                                                                                                Padding(
                                                                                                                                                    padding: EdgeInsets.only(top: 0),
                                                                                                                                                    child: Stack(alignment: AlignmentDirectional.center, children: <Widget>[
                                                                                                                                                      Positioned(
                                                                                                                                                        top: 420,
                                                                                                                                                        right: 18,
                                                                                                                                                        child: Column(
                                                                                                                                                          children: [
                                                                                                                                                            Text(
                                                                                                                                                              "UREA SUB @50 KG",
                                                                                                                                                              textAlign: TextAlign.right,
                                                                                                                                                              style: TextStyle(color: Colors.green.shade900, fontWeight: FontWeight.normal, fontSize: 14),
                                                                                                                                                            ),
                                                                                                                                                          ],
                                                                                                                                                        ),
                                                                                                                                                      ),
                                                                                                                                                      Padding(
                                                                                                                                                          padding: EdgeInsets.only(top: 0),
                                                                                                                                                          child: Stack(alignment: AlignmentDirectional.center, children: <Widget>[
                                                                                                                                                            Positioned(
                                                                                                                                                              top: 445,
                                                                                                                                                              left: 18,
                                                                                                                                                              child: Column(
                                                                                                                                                                children: [
                                                                                                                                                                  Text(
                                                                                                                                                                    "Tonase (Ton)",
                                                                                                                                                                    textAlign: TextAlign.left,
                                                                                                                                                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 14),
                                                                                                                                                                  ),
                                                                                                                                                                ],
                                                                                                                                                              ),
                                                                                                                                                            ),
                                                                                                                                                            Padding(
                                                                                                                                                                padding: EdgeInsets.only(top: 0),
                                                                                                                                                                child: Stack(alignment: AlignmentDirectional.center, children: <Widget>[
                                                                                                                                                                  Positioned(
                                                                                                                                                                    top: 445,
                                                                                                                                                                    right: 18,
                                                                                                                                                                    child: Column(
                                                                                                                                                                      children: [
                                                                                                                                                                        Text(
                                                                                                                                                                          "17",
                                                                                                                                                                          textAlign: TextAlign.right,
                                                                                                                                                                          style: TextStyle(color: Colors.green.shade900, fontWeight: FontWeight.normal, fontSize: 14),
                                                                                                                                                                        ),
                                                                                                                                                                      ],
                                                                                                                                                                    ),
                                                                                                                                                                  ),
                                                                                                                                                                  Padding(
                                                                                                                                                                      padding: EdgeInsets.only(top: 0),
                                                                                                                                                                      child: Stack(alignment: AlignmentDirectional.center, children: <Widget>[
                                                                                                                                                                        Positioned(
                                                                                                                                                                          top: 470,
                                                                                                                                                                          left: 18,
                                                                                                                                                                          child: Column(
                                                                                                                                                                            children: [
                                                                                                                                                                              Text(
                                                                                                                                                                                "Tanggal Muat",
                                                                                                                                                                                textAlign: TextAlign.left,
                                                                                                                                                                                style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 14),
                                                                                                                                                                              ),
                                                                                                                                                                            ],
                                                                                                                                                                          ),
                                                                                                                                                                        ),
                                                                                                                                                                        Padding(
                                                                                                                                                                            padding: EdgeInsets.only(top: 0),
                                                                                                                                                                            child: Stack(alignment: AlignmentDirectional.center, children: <Widget>[
                                                                                                                                                                              Positioned(
                                                                                                                                                                                top: 470,
                                                                                                                                                                                right: 18,
                                                                                                                                                                                child: Column(
                                                                                                                                                                                  children: [
                                                                                                                                                                                    Text(
                                                                                                                                                                                      "3 Februari 2022",
                                                                                                                                                                                      textAlign: TextAlign.right,
                                                                                                                                                                                      style: TextStyle(color: Colors.green.shade900, fontWeight: FontWeight.normal, fontSize: 14),
                                                                                                                                                                                    ),
                                                                                                                                                                                  ],
                                                                                                                                                                                ),
                                                                                                                                                                              ),
                                                                                                                                                                              Padding(
                                                                                                                                                                                  padding: EdgeInsets.only(top: 0),
                                                                                                                                                                                  child: Stack(alignment: AlignmentDirectional.center, children: <Widget>[
                                                                                                                                                                                    Positioned(
                                                                                                                                                                                      top: 495,
                                                                                                                                                                                      left: 18,
                                                                                                                                                                                      child: Column(
                                                                                                                                                                                        children: [
                                                                                                                                                                                          Text(
                                                                                                                                                                                            "Shift",
                                                                                                                                                                                            textAlign: TextAlign.left,
                                                                                                                                                                                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 14),
                                                                                                                                                                                          ),
                                                                                                                                                                                        ],
                                                                                                                                                                                      ),
                                                                                                                                                                                    ),
                                                                                                                                                                                    Padding(
                                                                                                                                                                                        padding: EdgeInsets.only(top: 0),
                                                                                                                                                                                        child: Stack(alignment: AlignmentDirectional.center, children: <Widget>[
                                                                                                                                                                                          Positioned(
                                                                                                                                                                                            top: 495,
                                                                                                                                                                                            right: 18,
                                                                                                                                                                                            child: Column(
                                                                                                                                                                                              children: [
                                                                                                                                                                                                Text(
                                                                                                                                                                                                  "Shift 1",
                                                                                                                                                                                                  textAlign: TextAlign.right,
                                                                                                                                                                                                  style: TextStyle(color: Colors.green.shade900, fontWeight: FontWeight.normal, fontSize: 14),
                                                                                                                                                                                                ),
                                                                                                                                                                                              ],
                                                                                                                                                                                            ),
                                                                                                                                                                                          ),
                                                                                                                                                                                          Positioned(
                                                                                                                                                                                              top: 445,
                                                                                                                                                                                              left: 125,
                                                                                                                                                                                              child: Container(
                                                                                                                                                                                                  width: 175,
                                                                                                                                                                                                  height: 175,
                                                                                                                                                                                                  decoration: BoxDecoration(
                                                                                                                                                                                                    image: DecorationImage(image: AssetImage('images/barcode.png'), fit: BoxFit.fitWidth),
                                                                                                                                                                                                  ))),
                                                                                                                                                                                          Padding(
                                                                                                                                                                                              padding: EdgeInsets.only(top: 0),
                                                                                                                                                                                              child: Stack(alignment: AlignmentDirectional.center, children: <Widget>[
                                                                                                                                                                                                Positioned(
                                                                                                                                                                                                    top: 555,
                                                                                                                                                                                                    left: 0,
                                                                                                                                                                                                    bottom: 0,
                                                                                                                                                                                                    child: Container(
                                                                                                                                                                                                        width: 425,
                                                                                                                                                                                                        height: 55,
                                                                                                                                                                                                        decoration: BoxDecoration(
                                                                                                                                                                                                          color: Colors.green.shade900,
                                                                                                                                                                                                        ))),
                                                                                                                                                                                                Padding(
                                                                                                                                                                                                    padding: EdgeInsets.only(top: 0),
                                                                                                                                                                                                    child: Stack(
                                                                                                                                                                                                      alignment: AlignmentDirectional.center,
                                                                                                                                                                                                      children: <Widget>[
                                                                                                                                                                                                        Positioned(
                                                                                                                                                                                                          top: 560,
                                                                                                                                                                                                          right: 10,
                                                                                                                                                                                                          bottom: 0,
                                                                                                                                                                                                          child: Column(
                                                                                                                                                                                                            children: [
                                                                                                                                                                                                              MaterialButton(
                                                                                                                                                                                                                onPressed: () {
                                                                                                                                                                                                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                                                                                                                                                                                                                },
                                                                                                                                                                                                                height: 30,
                                                                                                                                                                                                                minWidth: 150,
                                                                                                                                                                                                                shape: const StadiumBorder(),
                                                                                                                                                                                                                color: Color.fromARGB(200, 239, 243, 31),
                                                                                                                                                                                                                child: const Text(
                                                                                                                                                                                                                  "Cetak Tiket Booking",
                                                                                                                                                                                                                  style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                                                                                                                                                                                                                ),
                                                                                                                                                                                                              ),
                                                                                                                                                                                                            ],
                                                                                                                                                                                                          ),
                                                                                                                                                                                                        ),
                                                                                                                                                                                                      ],
                                                                                                                                                                                                    ))
                                                                                                                                                                                              ]))
                                                                                                                                                                                        ]))
                                                                                                                                                                                  ]))
                                                                                                                                                                            ]))
                                                                                                                                                                      ]))
                                                                                                                                                                ]))
                                                                                                                                                          ]))
                                                                                                                                                    ]))
                                                                                                                                              ]))
                                                                                                                                        ]))
                                                                                                                                  ]))
                                                                                                                            ]))
                                                                                                                      ]))
                                                                                                                ]))
                                                                                                          ]))
                                                                                                    ]))
                                                                                              ]))
                                                                                        ]))
                                                                                  ]))
                                                                            ]))
                                                                  ]))
                                                        ]))
                                              ]))
                                    ]))
                          ]))
                ])));
  }
}
