import 'package:flutter/material.dart';
import 'package:sistro_app/screen/homepage.dart';

class shift extends StatelessWidget {
  const shift({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Pilih Shift"),
            centerTitle: true,
            backgroundColor: Colors.green.shade900,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage()))
              },
            )),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          verticalDirection: VerticalDirection.down,
          children: [widget1()],
        ));
  }
}

class widget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: new Column(children: <Widget>[
      // Figma Flutter Generator Pilihshift1Widget - FRAME
      Container(
          width: 411,
          height: 665,
          decoration: BoxDecoration(
            color: Color.fromRGBO(3, 136, 53, 1),
          ),
          child: Stack(children: <Widget>[
            Positioned(
                top: 0,
                left: 0,
                child: Container(
                    width: 411,
                    height: 823,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ))),
            Positioned(
                top: 12,
                left: 9,
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
                          top: 10,
                          left: 13,
                          child: Container(
                              width: 88,
                              height: 22.64501953125,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
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
                                    top: 0,
                                    left: 0,
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
                              ]))),
                      Positioned(
                          top: 37,
                          left: 325,
                          child: Text(
                            '60',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(3, 136, 53, 1),
                                fontFamily: 'Inter',
                                fontSize: 20,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                                ),
                          )),
                      Positioned(
                          top: 153,
                          left: 325,
                          child: Text(
                            '50',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(239, 14, 14, 1),
                                fontFamily: 'Inter',
                                fontSize: 20,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                                ),
                          )),
                      Positioned(
                          top: 33,
                          left: 10,
                          child: Text(
                            'Tonase POSTO',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Inter',
                                fontSize: 18,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                                ),
                          )),
                      Positioned(
                          top: 151,
                          left: 16,
                          child: Text(
                            'Sisa',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Inter',
                                fontSize: 18,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                                ),
                          )),
                      Positioned(
                          top: 87,
                          left: 316,
                          child: Text(
                            '0 / 0',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(3, 136, 53, 1),
                                fontFamily: 'Inter',
                                fontSize: 20,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                                ),
                          )),
                      Positioned(
                          top: 88.151611328125,
                          left: 10,
                          child: Container(
                              width: 229,
                              height: 24.976303100585938,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Text(
                                      'Tonase Booking / Realisasi',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Inter',
                                          fontSize: 18,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5 /*PERCENT not supported*/
                                          ),
                                    )),
                              ]))),
                    ]))),
            Positioned(
                top: 217,
                left: 9,
                child: Container(
                    width: 384,
                    height: 386,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                              width: 384,
                              height: 386,
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
                          top: 19,
                          left: 19,
                          child: Text(
                            'Tanggal',
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
                          top: 19,
                          left: 146,
                          child: Text(
                            'Shift 1',
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
                          top: 19,
                          left: 233,
                          child: Text(
                            'Shift 2',
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
                          top: 19,
                          left: 322,
                          child: Text(
                            'Shift 3',
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
                          top: 88,
                          left: 20,
                          child: Container(
                              width: 346,
                              height: 69,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 17,
                                    left: 0,
                                    child: Text(
                                      '10 Februari 2022',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color.fromRGBO(3, 136, 53, 1),
                                          fontFamily: 'Inter',
                                          fontSize: 12,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5 /*PERCENT not supported*/
                                          ),
                                    )),
                                Positioned(
                                    top: 0,
                                    left: 126,
                                    child: Text(
                                      '33,33',
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
                                    top: 0,
                                    left: 216,
                                    child: Text(
                                      '33,33',
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
                                    top: 0,
                                    left: 306,
                                    child: Text(
                                      '33,33',
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
                                    top: 40,
                                    left: 125,
                                    child: Container(
                                        width: 45,
                                        height: 29,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 45,
                                                  height: 29,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10),
                                                      bottomLeft:
                                                          Radius.circular(10),
                                                      bottomRight:
                                                          Radius.circular(10),
                                                    ),
                                                    color: Color.fromRGBO(
                                                        3, 136, 53, 1),
                                                  ))),
                                          Positioned(
                                              top: 3.9000244140625,
                                              left: 1.63330078125,
                                              child: Text(
                                                'Pilih',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                    fontFamily: 'Inter',
                                                    fontSize: 12,
                                                    letterSpacing: 0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height:
                                                        1.5 /*PERCENT not supported*/
                                                    ),
                                              )),
                                        ]))),
                                Positioned(
                                    top: 39,
                                    left: 211,
                                    child: Container(
                                        width: 135,
                                        height: 30,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 45,
                                                  height: 29,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10),
                                                      bottomLeft:
                                                          Radius.circular(10),
                                                      bottomRight:
                                                          Radius.circular(10),
                                                    ),
                                                    color: Color.fromRGBO(
                                                        3, 136, 53, 1),
                                                  ))),
                                          Positioned(
                                              top: 3.9000244140625,
                                              left: 1.63330078125,
                                              child: Text(
                                                'Pilih',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                    fontFamily: 'Inter',
                                                    fontSize: 12,
                                                    letterSpacing: 0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height:
                                                        1.5 /*PERCENT not supported*/
                                                    ),
                                              )),
                                          Positioned(
                                              top: 1,
                                              left: 90,
                                              child: Container(
                                                  width: 45,
                                                  height: 29,
                                                  child:
                                                      Stack(children: <Widget>[
                                                    Positioned(
                                                        top: 0,
                                                        left: 0,
                                                        child: Container(
                                                            width: 45,
                                                            height: 29,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        10),
                                                                topRight: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              color: Color
                                                                  .fromRGBO(
                                                                      3,
                                                                      136,
                                                                      53,
                                                                      1),
                                                            ))),
                                                    Positioned(
                                                        top: 3.9000244140625,
                                                        left: 1.63330078125,
                                                        child: Text(
                                                          'Pilih',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      255,
                                                                      255,
                                                                      255,
                                                                      1),
                                                              fontFamily:
                                                                  'Inter',
                                                              fontSize: 12,
                                                              letterSpacing: 0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              height:
                                                                  1.5 /*PERCENT not supported*/
                                                              ),
                                                        )),
                                                  ]))),
                                        ]))),
                              ]))),
                      Positioned(
                          top: 181,
                          left: 19,
                          child: Container(
                              width: 347,
                              height: 164,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 17,
                                    left: 1,
                                    child: Text(
                                      '10 Februari 2022',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color.fromRGBO(3, 136, 53, 1),
                                          fontFamily: 'Inter',
                                          fontSize: 12,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5 /*PERCENT not supported*/
                                          ),
                                    )),
                                Positioned(
                                    top: 0,
                                    left: 127,
                                    child: Text(
                                      '33,33',
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
                                    top: 0,
                                    left: 217,
                                    child: Text(
                                      '33,33',
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
                                    top: 0,
                                    left: 307,
                                    child: Text(
                                      '33,33',
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
                                    top: 40,
                                    left: 126,
                                    child: Container(
                                        width: 45,
                                        height: 29,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 45,
                                                  height: 29,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10),
                                                      bottomLeft:
                                                          Radius.circular(10),
                                                      bottomRight:
                                                          Radius.circular(10),
                                                    ),
                                                    color: Color.fromRGBO(
                                                        3, 136, 53, 1),
                                                  ))),
                                          Positioned(
                                              top: 3.9000244140625,
                                              left: 1.63330078125,
                                              child: Text(
                                                'Pilih',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                    fontFamily: 'Inter',
                                                    fontSize: 12,
                                                    letterSpacing: 0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height:
                                                        1.5 /*PERCENT not supported*/
                                                    ),
                                              )),
                                        ]))),
                                Positioned(
                                    top: 39,
                                    left: 212,
                                    child: Container(
                                        width: 135,
                                        height: 30,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 45,
                                                  height: 29,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10),
                                                      bottomLeft:
                                                          Radius.circular(10),
                                                      bottomRight:
                                                          Radius.circular(10),
                                                    ),
                                                    color: Color.fromRGBO(
                                                        3, 136, 53, 1),
                                                  ))),
                                          Positioned(
                                              top: 3.9000244140625,
                                              left: 1.63330078125,
                                              child: Text(
                                                'Pilih',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                    fontFamily: 'Inter',
                                                    fontSize: 12,
                                                    letterSpacing: 0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height:
                                                        1.5 /*PERCENT not supported*/
                                                    ),
                                              )),
                                          Positioned(
                                              top: 1,
                                              left: 90,
                                              child: Container(
                                                  width: 45,
                                                  height: 29,
                                                  child:
                                                      Stack(children: <Widget>[
                                                    Positioned(
                                                        top: 0,
                                                        left: 0,
                                                        child: Container(
                                                            width: 45,
                                                            height: 29,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        10),
                                                                topRight: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              color: Color
                                                                  .fromRGBO(
                                                                      3,
                                                                      136,
                                                                      53,
                                                                      1),
                                                            ))),
                                                    Positioned(
                                                        top: 3.9000244140625,
                                                        left: 1.63330078125,
                                                        child: Text(
                                                          'Pilih',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      255,
                                                                      255,
                                                                      255,
                                                                      1),
                                                              fontFamily:
                                                                  'Inter',
                                                              fontSize: 12,
                                                              letterSpacing: 0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              height:
                                                                  1.5 /*PERCENT not supported*/
                                                              ),
                                                        )),
                                                  ]))),
                                        ]))),
                                Positioned(
                                    top: 95,
                                    left: 0,
                                    child: Container(
                                        width: 346,
                                        height: 69,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 17,
                                              left: 0,
                                              child: Text(
                                                '10 Februari 2022',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        3, 136, 53, 1),
                                                    fontFamily: 'Inter',
                                                    fontSize: 12,
                                                    letterSpacing: 0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height:
                                                        1.5 /*PERCENT not supported*/
                                                    ),
                                              )),
                                          Positioned(
                                              top: 0,
                                              left: 126,
                                              child: Text(
                                                '33,33',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        3, 136, 53, 1),
                                                    fontFamily: 'Inter',
                                                    fontSize: 14,
                                                    letterSpacing: 0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height:
                                                        1.5 /*PERCENT not supported*/
                                                    ),
                                              )),
                                          Positioned(
                                              top: 0,
                                              left: 216,
                                              child: Text(
                                                '33,33',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        3, 136, 53, 1),
                                                    fontFamily: 'Inter',
                                                    fontSize: 14,
                                                    letterSpacing: 0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height:
                                                        1.5 /*PERCENT not supported*/
                                                    ),
                                              )),
                                          Positioned(
                                              top: 0,
                                              left: 306,
                                              child: Text(
                                                '33,33',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        3, 136, 53, 1),
                                                    fontFamily: 'Inter',
                                                    fontSize: 14,
                                                    letterSpacing: 0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height:
                                                        1.5 /*PERCENT not supported*/
                                                    ),
                                              )),
                                          Positioned(
                                              top: 40,
                                              left: 125,
                                              child: Container(
                                                  width: 45,
                                                  height: 29,
                                                  child:
                                                      Stack(children: <Widget>[
                                                    Positioned(
                                                        top: 0,
                                                        left: 0,
                                                        child: Container(
                                                            width: 45,
                                                            height: 29,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        10),
                                                                topRight: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              color: Color
                                                                  .fromRGBO(
                                                                      3,
                                                                      136,
                                                                      53,
                                                                      1),
                                                            ))),
                                                    Positioned(
                                                        top: 3.9000244140625,
                                                        left: 1.63330078125,
                                                        child: Text(
                                                          'Pilih',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      255,
                                                                      255,
                                                                      255,
                                                                      1),
                                                              fontFamily:
                                                                  'Inter',
                                                              fontSize: 12,
                                                              letterSpacing: 0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              height:
                                                                  1.5 /*PERCENT not supported*/
                                                              ),
                                                        )),
                                                  ]))),
                                          Positioned(
                                              top: 39,
                                              left: 211,
                                              child: Container(
                                                  width: 135,
                                                  height: 30,
                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 0,
                                                            left: 0,
                                                            child: Container(
                                                                width: 45,
                                                                height: 29,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            10),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            10),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            10),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            10),
                                                                  ),
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          3,
                                                                          136,
                                                                          53,
                                                                          1),
                                                                ))),
                                                        Positioned(
                                                            top:
                                                                3.9000244140625,
                                                            left: 1.63330078125,
                                                            child: Text(
                                                              'Pilih',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          255,
                                                                          255,
                                                                          255,
                                                                          1),
                                                                  fontFamily:
                                                                      'Inter',
                                                                  fontSize: 12,
                                                                  letterSpacing:
                                                                      0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  height:
                                                                      1.5 /*PERCENT not supported*/
                                                                  ),
                                                            )),
                                                        Positioned(
                                                            top: 1,
                                                            left: 90,
                                                            child: Container(
                                                                width: 45,
                                                                height: 29,
                                                                child: Stack(
                                                                    children: <
                                                                        Widget>[
                                                                      Positioned(
                                                                          top:
                                                                              0,
                                                                          left:
                                                                              0,
                                                                          child: Container(
                                                                              width: 45,
                                                                              height: 29,
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.only(
                                                                                  topLeft: Radius.circular(10),
                                                                                  topRight: Radius.circular(10),
                                                                                  bottomLeft: Radius.circular(10),
                                                                                  bottomRight: Radius.circular(10),
                                                                                ),
                                                                                color: Color.fromRGBO(3, 136, 53, 1),
                                                                              ))),
                                                                      Positioned(
                                                                          top:
                                                                              3.9000244140625,
                                                                          left:
                                                                              1.63330078125,
                                                                          child:
                                                                              Text(
                                                                            'Pilih',
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            style: TextStyle(
                                                                                color: Color.fromRGBO(255, 255, 255, 1),
                                                                                fontFamily: 'Inter',
                                                                                fontSize: 12,
                                                                                letterSpacing: 0,
                                                                                fontWeight: FontWeight.normal,
                                                                                height: 1.5 /*PERCENT not supported*/
                                                                                ),
                                                                          )),
                                                                    ]))),
                                                      ]))),
                                        ]))),
                              ]))),
                    ]))),
          ]))
    ]));
  }
}
