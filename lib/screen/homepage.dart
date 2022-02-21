import 'package:flutter/material.dart';
import 'package:sistro_app/screen/login.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0), // here the desired height
        child: AppBar(
          backgroundColor: Colors.green.shade900,
          title: Column(children: <Widget>[
            Image.asset(
              'images/logosistro.png',
              width: 85,
              height: 26,
            ),
          ]),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                showAlertDialog(context);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 0),
        child: Stack(alignment: AlignmentDirectional.center, children: <Widget>[
          Positioned(
              top: 10,
              left: 17,
              child: Container(
                  width: 377,
                  height: 54,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 4),
                          blurRadius: 4)
                    ],
                    color: Color.fromRGBO(236, 236, 236, 1),
                  ))),
          Positioned(
              top: 15,
              left: 35,
              child: Text(
                'Resta Jaya',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 22,
                    letterSpacing: 0,
                    height: 1.5 /*PERCENT not supported*/
                    ),
              )),
          Positioned(
            top: 101,
            left: 17,
            child: new InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => login())); //ganti
                },
                child: Container(
                    width: 183,
                    height: 141,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
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
          ),
          Positioned(
            top: 101,
            left: 211,
            child: new InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => login())); //ganti
                },
                child: Container(
                    width: 183,
                    height: 141,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
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
          ),
          Positioned(
            top: 101,
            left: 59,
            child: new InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => login())); //ganti
              },
              child: Container(
                  width: 100,
                  height: 106,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/tiketbaru.png'),
                        fit: BoxFit.fitWidth),
                  )),
            ),
          ),
          Positioned(
              top: 201,
              left: 65,
              child: Text(
                'Tiket Baru',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 18,
                    letterSpacing: 0,
                    height: 1.5 /*PERCENT not supported*/
                    ),
              )),
          Positioned(
              top: 201,
              left: 260,
              child: Text(
                'Data Tiket',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 18,
                    letterSpacing: 0,
                    height: 1.5 /*PERCENT not supported*/
                    ),
              )),
          Positioned(
            top: 101,
            left: 262,
            child: new InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => login())); //ganti
                },
                child: Container(
                    width: 80,
                    height: 101,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/datatiket.png'),
                          fit: BoxFit.fitWidth),
                    ))),
          ),
          Positioned(
              top: 540,
              left: 17,
              child: Container(
                  width: 368,
                  height: 56,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/4logo.png'),
                        fit: BoxFit.fitWidth),
                  ))),
        ]),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = TextButton(
      child: Text("Cancel"), onPressed: () => Navigator.pop(context));

  //kembali ke login
  Widget continueButton = TextButton(
    child: Text("Continue"),
    onPressed: () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Logout"),
    content: Text("Would you like to logout?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
