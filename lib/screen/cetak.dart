import 'package:flutter/material.dart';
import 'package:sistro_app/screen/datatiket.dart';
import 'package:sistro_app/screen/homepage.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

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
                  _createPDF();
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

void _createPDF() async {
  // buat class pdf
  final pdf = pw.Document();

// my images
  var dataImage = await rootBundle.load("assets/kode.png");
  var myImage = dataImage.buffer.asUint8List();

  var dataImage2 = await rootBundle.load("assets/barcode.png");
  var myImage2 = dataImage2.buffer.asUint8List();

  var dataImage3 = await rootBundle.load("assets/logosistro.png");
  var myImage3 = dataImage3.buffer.asUint8List();

  // buat pages
  pdf.addPage(
    pw.MultiPage(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return [
          pw.SizedBox(width: 0, height: 0),
          pw.Padding(
              padding: pw.EdgeInsets.only(top: 0, left: 0),
              child: pw.Container(
                  width: 600,
                  height: 50,
                  color: PdfColors.green900,
                  child: pw.Container(
                    child: pw.Image(
                      pw.MemoryImage(myImage3),
                      fit: pw.BoxFit.fitHeight,
                    ),
                  ))),
          pw.SizedBox(width: 600, height: 0),
          pw.Container(
              color: PdfColors.green900,
              alignment: pw.Alignment.centerLeft,
              width: 600,
              height: 50,
              child: pw.Text("Tiket Pemuatan",
                  style: pw.TextStyle(
                    fontSize: 20,
                    fontWeight: pw.FontWeight.normal,
                    color: PdfColors.white,
                  ))),
          pw.SizedBox(width: 0, height: 0),
          pw.Container(
              color: PdfColors.grey50,
              alignment: pw.Alignment.centerLeft,
              width: 600,
              height: 50,
              child: pw.Text("Detail Transportir",
                  style: pw.TextStyle(
                    fontSize: 20,
                    fontWeight: pw.FontWeight.normal,
                    color: PdfColors.black,
                  ))),
          pw.SizedBox(width: 600, height: 10),
          pw.Text(
            "Kode Booking \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t SISTRO_RJ_UQJ1Km2Fq",
            textAlign: pw.TextAlign.left,
            style: pw.TextStyle(color: PdfColors.black, fontSize: 16),
          ),
          pw.SizedBox(width: 600, height: 5),
          pw.Text(
            "Nama Transportir \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Resta Jaya",
            textAlign: pw.TextAlign.left,
            style: pw.TextStyle(color: PdfColors.black, fontSize: 16),
          ),
          pw.SizedBox(width: 600, height: 5),
          pw.Text(
            "Nama Driver \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t SIPANDA",
            textAlign: pw.TextAlign.left,
            style: pw.TextStyle(color: PdfColors.black, fontSize: 16),
          ),
          pw.SizedBox(width: 600, height: 5),
          pw.Text(
            "Nopol Armada \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t AD 8973 DC",
            textAlign: pw.TextAlign.left,
            style: pw.TextStyle(color: PdfColors.black, fontSize: 16),
          ),
          pw.SizedBox(width: 600, height: 10),
          pw.Padding(
              padding: pw.EdgeInsets.only(top: 0, left: 350),
              child: pw.Container(
                width: 120,
                height: 120,
                child: pw.Image(
                  pw.MemoryImage(myImage),
                  fit: pw.BoxFit.cover,
                ),
              )),
          pw.SizedBox(width: 600, height: 20),
          pw.Container(
              color: PdfColors.green900,
              alignment: pw.Alignment.centerLeft,
              width: 600,
              height: 50,
              child: pw.Text("Detail Delivery Order",
                  style: pw.TextStyle(
                    fontSize: 20,
                    fontWeight: pw.FontWeight.normal,
                    color: PdfColors.white,
                  ))),
          pw.SizedBox(width: 600, height: 10),
          pw.Text(
            "POSTO \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t 532004887857",
            textAlign: pw.TextAlign.left,
            style: pw.TextStyle(color: PdfColors.black, fontSize: 16),
          ),
          pw.SizedBox(width: 600, height: 5),
          pw.Text(
            "Gudang Asal \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Gudang Muat PKC",
            textAlign: pw.TextAlign.left,
            style: pw.TextStyle(color: PdfColors.black, fontSize: 16),
          ),
          pw.SizedBox(width: 600, height: 5),
          pw.Text(
            "Gudang Tujuan \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t BDG 1NAGREG",
            textAlign: pw.TextAlign.left,
            style: pw.TextStyle(color: PdfColors.black, fontSize: 16),
          ),
          pw.SizedBox(width: 600, height: 5),
          pw.Text(
            "Produk \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t UREA SUB @50 KG",
            textAlign: pw.TextAlign.left,
            style: pw.TextStyle(color: PdfColors.black, fontSize: 16),
          ),
          pw.SizedBox(width: 600, height: 5),
          pw.Text(
            "Tonase (Ton) \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t 17",
            textAlign: pw.TextAlign.left,
            style: pw.TextStyle(color: PdfColors.black, fontSize: 16),
          ),
          pw.SizedBox(width: 600, height: 5),
          pw.Text(
            "Tanggal Muat \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t '3 Februari 2022",
            textAlign: pw.TextAlign.left,
            style: pw.TextStyle(color: PdfColors.black, fontSize: 16),
          ),
          pw.SizedBox(width: 600, height: 5),
          pw.Text(
            "Shift \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Shift 1",
            textAlign: pw.TextAlign.left,
            style: pw.TextStyle(color: PdfColors.black, fontSize: 16),
          ),
          pw.SizedBox(width: 600, height: 20),
          pw.Padding(
              padding: pw.EdgeInsets.only(top: 0, left: 65),
              child: pw.Container(
                width: 350,
                height: 70,
                child: pw.Image(
                  pw.MemoryImage(myImage2),
                  fit: pw.BoxFit.cover,
                ),
              )),
        ];
      },
    ),
  ); // Page

  // simpan
  Uint8List bytes = await pdf.save();

  // buat file kosong di direktori
  final dir = await getApplicationDocumentsDirectory();
  final file = File('${dir.path}/cetaktiket.pdf');

  // timpa file kosong dengan file pdf
  await file.writeAsBytes(bytes);

  // open pdf
  await OpenFile.open(file.path);
}
