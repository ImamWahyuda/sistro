import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sistro_app/screen/homepage.dart';
import 'package:sistro_app/model/login_model.dart';
import 'package:sistro_app/api/api_service.dart';

import 'package:http/http.dart' as http;

class login extends StatefulWidget {
  static const String id = "sign_up_page";
  const login({Key? key}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();
}

// Future<UserModel?> createUser(String username, String password) async {
//   final String url = "http://sistro-pi-dev.petrokimia-gresik.com/token";

//   final response = await http
//       .post(Uri.parse(url), body: {"username": username, "password": password});

//   if (response.statusCode == 201) {
//     final String responseString = response.body;

//     return userModelFromJson(responseString);
//   } else {
//     return null;
//   }
// }

class LoginPageState extends State<login> {
  bool passenable = true;
  String dropdownValue = '';
  var usernameController = TextEditingController();
  var passController = TextEditingController();
  String grant_type = 'password';

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
                          TextFormField(
                            keyboardType: TextInputType.text,
                            controller: usernameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              labelText: 'Username',
                              hintText: 'Enter Username',
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            obscureText: passenable,
                            keyboardType: TextInputType.text,
                            controller: passController,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                                hintText: 'Enter your secure password',
                                suffixIcon: IconButton(
                                    color: Colors.black87,
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
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              border: OutlineInputBorder(),
                              labelText: 'Company',
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
                          login();
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

  Future<void> login() async {
    if (passController.text.isNotEmpty && usernameController.text.isNotEmpty) {
      var response = await http.post(Uri.parse("https://reqres.in/api/login"),
          headers: {
            "Accept": "application/json",
            "Access-Control-Allow-Origin": "*"
          },
          body: ({
            'grant_type': grant_type,
            'username': usernameController.text,
            'password': passController.text
          }));
      if (response.statusCode == 200) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Login Sukses")));
        print("Login Sukses (200)");
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Invalid")));
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Login Tidak Berhasil")));
    }
  }
}
