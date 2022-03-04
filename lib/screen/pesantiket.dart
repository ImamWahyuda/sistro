import 'package:flutter/material.dart';
import 'package:sistro_app/screen/datatiket.dart';
import 'package:sistro_app/screen/homepage.dart';
import 'package:sistro_app/screen/tiketbaru.dart';

class pesan extends StatefulWidget {
  pesan({Key? key}) : super(key: key);

  @override
  State<pesan> createState() => _pesanState();
}

class _pesanState extends State<pesan> {
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
        appBar: AppBar(
            title: Text("Form Pemesanan"),
            centerTitle: true,
            backgroundColor: Colors.green.shade900,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => tiketbaru()))
              },
            )),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              verticalDirection: VerticalDirection.down,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, right: 60),
                  child: Column(
                    children: <Widget>[
                      widget1('Produk', 'Urea SUB @50KG'),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                        child: widget1('Sisa', '50'),
                      ),
                      Divider(
                        height: 40,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                        child: widget2('No Plat Truck'),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              labelText: 'No Plat Truk',
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                        child: widget2('Nama Pengemudi'),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              labelText: 'Nama Pengemudi',
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                        child: widget2('Tonase'),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              labelText: 'Tonase',
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                        child: widget2('Tanggal'),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              suffixIcon: Icon(
                                Icons.calendar_today,
                                color: Colors.black,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                            ),
                            onTap: () async {
                              var date = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2021),
                                lastDate: DateTime(2030),
                              );

                              dateController.text =
                                  date.toString().substring(0, 10);
                            },
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                        child: widget2('Pilih Shift'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 10),
                        child: DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            border: OutlineInputBorder(),
                          ),
                          icon: const Icon(Icons.arrow_downward,
                              color: Colors.black87),
                          elevation: 16,
                          isExpanded: true,
                          iconSize: 20.0,
                          style: const TextStyle(
                              color: Colors.black87, fontSize: 16),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: <String>['Shift 1', 'Shift 2', 'Shift 3']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => datatiket()));
                          },
                          height: 45,
                          minWidth: 240,
                          shape: const StadiumBorder(),
                          color: Colors.green.shade900,
                          child: const Text(
                            "Pesan",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ));
  }
}

Widget widget1(String firstTitle, String firstDesc) {
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

Widget widget2(String firstTitle) {
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
            )
          ],
        ),
      ),
    ],
  );
}
