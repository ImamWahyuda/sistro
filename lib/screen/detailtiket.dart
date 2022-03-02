library flutter_ticket_widget;

import 'package:flutter/material.dart';
import 'package:flutter_ticket_widget/flutter_ticket_widget.dart';
import 'package:sistro_app/screen/homepage.dart';
import 'package:sistro_app/main.dart';

class tiket extends StatefulWidget {
  tiket({Key? key}) : super(key: key);

  @override
  State<tiket> createState() => _tiketState();
}

class _tiketState extends State<tiket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Detail Tiket"),
          centerTitle: true,
          backgroundColor: Colors.green.shade900,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()))
            },
          )),
      backgroundColor: Colors.green.shade900,
      body: Center(
        child: FlutterTicketWidget(
          width: 380.0,
          height: 630.0,
          isCornerRounded: true,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 190.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(width: 1.0, color: Colors.green),
                      ),
                      child: Center(
                        child: Text(
                          '532004887857',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, right: 60),
                  child: Column(
                    children: <Widget>[
                      ticketDetailsWidget(
                          'Kode booking', 'SISTRO_RJ_UQJ1Km2Fq'),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                        child:
                            ticketDetailsWidget('Tgl Muat', '03 Februari 2022'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10.0,
                          right: 0,
                        ),
                        child: ticketDetailsWidget('Shift', '01'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                        child:
                            ticketDetailsWidget('Nopol Armada', 'AD 8973 DC'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                        child: ticketDetailsWidget('Nama Driver', 'SIPANDA'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                        child: ticketDetailsWidget('Produk', 'UREA SUB @50 KG'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                        child: ticketDetailsWidget('Transportir', 'Resta Jaya'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                        child: ticketDetailsWidget('Tujuan', 'BDG 1NAGREG'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                        child: ticketDetailsWidget('QTY POSTO', '99'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                        child: ticketDetailsWidget('QTY', '17'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                        child: ticketDetailsWidget(
                            'Tgl Pesan', '03 Februari 2022'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                        child: ticketDetailsWidget(
                            'Status', 'Armada sampai di Security Pass'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget ticketDetailsWidget(String firstTitle, String firstDesc) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                firstTitle,
                style: TextStyle(color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Text(
                  firstDesc,
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
