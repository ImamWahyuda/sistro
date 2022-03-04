import 'package:flutter/material.dart';
import 'package:sistro_app/screen/datatiket.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:sistro_app/screen/homepage.dart';

class CetakPosto extends StatelessWidget {
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
        body: Padding(
            padding: EdgeInsets.only(top: 0),
            child: Stack(alignment: AlignmentDirectional.center, children: <
                Widget>[
              Positioned(
                top: 5,
                child: Column(
                  children: [
                    Text(
                      "Stock Transport Order",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.green.shade900,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 20,
                child: Column(
                  children: [
                    Text(
                      "No. Po 5000000123",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.green.shade900,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 35,
                child: Column(
                  children: [
                    Text(
                      "Tanggal : 01 Februari 2022",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.green.shade900,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child:
                      Stack(alignment: AlignmentDirectional.center, children: <
                          Widget>[
                    Positioned(
                      top: 57,
                      left: 0,
                      child: Container(
                        height: 1.0,
                        width: 400.0,
                        color: Colors.black,
                      ),
                    ),
                    Positioned(
                      top: 62,
                      left: 0,
                      child: Column(
                        children: [
                          Text(
                            "Kepada Yth:",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 80,
                      left: 0,
                      child: Column(
                        children: [
                          Text(
                            "RESTA JAYA",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 95,
                      left: 0,
                      child: Column(
                        children: [
                          Text(
                            "Indonesia",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 110,
                      left: 0,
                      child: Column(
                        children: [
                          Text(
                            "Mohon diangkut barang berikut:",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 125,
                      left: 0,
                      child: Column(
                        children: [
                          Text(
                            "Asal Barang",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 140,
                      left: 0,
                      child: Column(
                        children: [
                          Text(
                            "Gudang Muat PKC, PKC",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 155,
                      left: 0,
                      child: Column(
                        children: [
                          Text(
                            "Karawang",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 170,
                      left: 0,
                      child: Column(
                        children: [
                          Text(
                            "Karawang",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 185,
                      left: 0,
                      child: Column(
                        children: [
                          Text(
                            "Indonesia",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 200,
                      left: 0,
                      child: Column(
                        children: [
                          Text(
                            "Tujuan Barang",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 215,
                      left: 0,
                      child: Column(
                        children: [
                          Text(
                            "BKS Cikarang, PKC",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 230,
                      left: 0,
                      child: Column(
                        children: [
                          Text(
                            "Jl. Jendral Urip Sumoharjo No 238, Tanjungbaru, Kec. Cikarang Timur, Kab. Bekasi ",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 245,
                      left: 0,
                      child: Column(
                        children: [
                          Text(
                            "Kab. Bekasi",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 260,
                      left: 0,
                      child: Column(
                        children: [
                          Text(
                            "Jawa Barat",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 275,
                      left: 0,
                      child: Column(
                        children: [
                          Text(
                            "Indonesia",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 290,
                      left: 0,
                      child: Column(
                        children: [
                          Text(
                            "Moda",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 290,
                      left: 175,
                      child: Column(
                        children: [
                          Text(
                            "Truk",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.green.shade900,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 305,
                      left: 0,
                      child: Column(
                        children: [
                          Text(
                            "Kondisi Penyerahan",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 305,
                      left: 175,
                      child: Column(
                        children: [
                          Text(
                            "Diserahkan di depan pintu gerbang",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.green.shade900,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 320,
                      left: 0,
                      child: Column(
                        children: [
                          Text(
                            "Referensi",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 335,
                      left: 0,
                      child: Column(
                        children: [
                          Text(
                            "Pemilik Barang",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 335,
                      left: 175,
                      child: Column(
                        children: [
                          Text(
                            "PT. Pupuk Sriwidjaja",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.green.shade900,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 320,
                      left: 0,
                      child: Column(
                        children: [
                          Text(
                            "Referensi",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 350,
                      left: 0,
                      child: Column(
                        children: [
                          Text(
                            "Batas Waktu Pengambilan",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 350,
                      left: 175,
                      child: Column(
                        children: [
                          Text(
                            "28 Februari 2022",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.green.shade900,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0.0),
                        child: Stack(
                            alignment: AlignmentDirectional.center,
                            children: <Widget>[
                              Positioned(
                                top: 370,
                                child: Container(
                                  height: 1.0,
                                  width: 450.0,
                                  color: Colors.black,
                                ),
                              ),
                              Positioned(
                                top: 375,
                                left: 0,
                                child: Column(
                                  children: [
                                    Text(
                                      "No",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 375,
                                left: 70,
                                child: Column(
                                  children: [
                                    Text(
                                      "Nama Barang",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 375,
                                left: 265,
                                child: Column(
                                  children: [
                                    Text(
                                      "Qty",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 375,
                                left: 347,
                                child: Column(
                                  children: [
                                    Text(
                                      "Satuan",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 0.0),
                                  child: Stack(
                                      alignment: AlignmentDirectional.center,
                                      children: <Widget>[
                                        Positioned(
                                          top: 395,
                                          child: Container(
                                            height: 1.0,
                                            width: 450.0,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Positioned(
                                          top: 400,
                                          left: 0,
                                          child: Column(
                                            children: [
                                              Text(
                                                "1",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color:
                                                        Colors.green.shade900,
                                                    fontFamily: 'Inter',
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          top: 400,
                                          left: 70,
                                          child: Column(
                                            children: [
                                              Text(
                                                "NPK 15-10-12 SUB @50KG",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color:
                                                        Colors.green.shade900,
                                                    fontFamily: 'Inter',
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          top: 400,
                                          left: 266.5,
                                          child: Column(
                                            children: [
                                              Text(
                                                "30",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color:
                                                        Colors.green.shade900,
                                                    fontFamily: 'Inter',
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          top: 400,
                                          left: 352,
                                          child: Column(
                                            children: [
                                              Text(
                                                "TON",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color:
                                                        Colors.green.shade900,
                                                    fontFamily: 'Inter',
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 0.0),
                                            child: Stack(
                                                alignment:
                                                    AlignmentDirectional.center,
                                                children: <Widget>[
                                                  Positioned(
                                                    top: 420,
                                                    child: Container(
                                                      height: 1.0,
                                                      width: 450.0,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Positioned(
                                                    top: 430,
                                                    left: 0,
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          "Hal-hal lain yang belum tercantum dalam dokumen ini,",
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontSize: 14),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Positioned(
                                                    top: 445,
                                                    left: 0,
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          "agar merujuk kepada surat perjanjian antara rekanan dengan ",
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontSize: 14),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Positioned(
                                                    top: 460,
                                                    left: 0,
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          "PT. Pupuk Sriwidjaja Palembang.",
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontSize: 14),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Positioned(
                                                    top: 480,
                                                    left: 0,
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          "Belum Cut Off",
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .green
                                                                  .shade900,
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontSize: 14),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Positioned(
                                                    top: 510,
                                                    left: 30,
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          "RESTA JAYA",
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontSize: 14),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Positioned(
                                                    top: 510,
                                                    left: 155,
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          "PT. Pupuk Sriwidjaja Palembang",
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontSize: 14),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Positioned(
                                                    top: 575,
                                                    left: 30,
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          "......................",
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontSize: 14),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Positioned(
                                                      top: 85,
                                                      right: 18,
                                                      child: Container(
                                                          width: 125,
                                                          height: 125,
                                                          decoration:
                                                              BoxDecoration(
                                                            image: DecorationImage(
                                                                image: AssetImage(
                                                                    'images/kode.png'),
                                                                fit: BoxFit
                                                                    .fitWidth),
                                                          ))),
                                                  /*Positioned(
                                                    top: 560,
                                                    right: 10,
                                                    bottom: 0,
                                                    child: Column(
                                                      children: [
                                                        MaterialButton(
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .push(MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            HomePage()));
                                                          },
                                                          height: 30,
                                                          minWidth: 1,
                                                          shape:
                                                              const StadiumBorder(),
                                                          color: Color.fromARGB(
                                                              200,
                                                              239,
                                                              243,
                                                              31),
                                                          child: const Text(
                                                            "Cetak POSTO",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),*/
                                                ]))
                                      ]))
                            ]))
                  ]))
            ])));
  }
}
