import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart';
import 'package:npkbh/api_connection/api_connection.dart';
import 'package:npkbh/views/seller_customer_page.dart';

// ignore: unused_import
import '../views/seller_profile_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController =
      TextEditingController(text: 'admin@bizzrank.com');
  TextEditingController passwordController =
      TextEditingController(text: '1234');

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void login(String email, String password) async {
    try {
      Response response = await post(
          // https://reqres.in/api/register
          Uri.parse(
              API.login), //'http://localhost/fbsellers1/api/login/login.php'
          body: {'user_email': email, 'user_password': password});

      if (response.statusCode == 200) {
        // print('Account created successfully');
        // var jsonData = jsonDecode(response.body);

        var jsonData = jsonDecode(response.body);
        // ignore: unused_local_variable
        var userData = jsonData["userData"];
        // print(userData["user_email"]);
        // print(jsonData);
        // ignore: use_build_context_synchronously
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SellerProfile()));
      } else {
        print('Failed');
      }
    } catch (e) {
      showDialog(
          // ignore: use_build_context_synchronously
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Exception"),
              content: Text(e.toString()),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.asset(
            'images/npkbh_logo.png',
            height: MediaQuery.of(context).size.height * .15,
          ),
          // const Padding(
          //   padding: EdgeInsets.only(left: 140.0),
          //   child: Text(
          //     "Welcome Back",
          //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          //   ),
          // ),
          const SizedBox(
            height: 12,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 120.0),
            child: Text(
              "Log in to your existing account.",
              style: TextStyle(fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  hintText: 'Email',
                  labelText: "Email",
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 28.0),
                    child: Icon(Icons.person_outlined),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 28.0),
                    child: Icon(Icons.lock_open),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Text(
              'Forgot password?',
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 168.0, right: 150, top: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(255, 255, 0, 0.5),
                  shape: const StadiumBorder(),
                  maximumSize: Size(MediaQuery.of(context).size.width * .3, 40),
                  minimumSize: const Size(80, 40)),
              onPressed: () {
                login(emailController.text.toString(),
                    passwordController.text.toString());
              },
              child: const Text("LOG IN"),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const Text(
            'or connect with',
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color.fromARGB(255, 200, 218, 243)),
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.facebook),
                      SizedBox(
                        width: 6,
                      ),
                      Text('Facebook'),
                    ],
                  )),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF44331)),
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FaIcon(FontAwesomeIcons.google),
                      SizedBox(
                        width: 6,
                      ),
                      Text('Google'),
                    ],
                  )),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?"),
              SizedBox(
                width: 6,
              ),
              Text(
                "Sign Up",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<TextEditingController>(
        'emailController', emailController));
  }
}
