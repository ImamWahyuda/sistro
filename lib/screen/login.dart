import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sistro_app/screen/homepage.dart';

class login extends StatefulWidget {
  static const String id = "sign_up_page";
  const login({Key? key}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<login> {
  bool passenable = true;
  String dropdownValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.centerRight,
                  colors: [
                Colors.green.shade900,
                Colors.green.shade900,
                Colors.green.shade900,
              ])),
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Image.asset(
                          'images/logosistro.png',
                          width: 222,
                          height: 67,
                        )
                      ],
                    ),
                  )),
              Expanded(
                flex: 5,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Login",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 32.5),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(children: [
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                labelText: 'User Name',
                                hintText: 'Enter valid email'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            obscureText: passenable,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                                hintText: 'Enter your secure password',
                                suffix: IconButton(
                                    onPressed: () {
                                      //add Icon button at end of TextField
                                      setState(() {
                                        //refresh UI
                                        if (passenable) {
                                          //if passenable == true, make it false
                                          passenable = false;
                                        } else {
                                          passenable =
                                              true; //if passenable == false, make it true
                                        }
                                      });
                                    },
                                    icon: Icon(passenable == true
                                        ? Icons.remove_red_eye
                                        : Icons.password))
                                //eye icon if passenable = true, else, Icon is ***__
                                ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                              border: OutlineInputBorder(),
                              labelText: 'Company',
                            ),
                            icon: const Icon(Icons.arrow_downward),
                            elevation: 16,
                            isExpanded: true,
                            iconSize: 20.0,
                            style: const TextStyle(color: Colors.black),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: <String>['Transportir']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ]),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomePage()));
                        },
                        height: 45,
                        minWidth: 240,
                        shape: const StadiumBorder(),
                        color: Colors.green.shade900,
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
