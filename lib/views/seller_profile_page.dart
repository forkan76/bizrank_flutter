import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:npkbh/api_connection/api_connection.dart';

import '../models/seller.dart';
// ignore: unused_import
import '../services/remote_service_seller_profile.dart';

class SellerProfile extends StatefulWidget {
  const SellerProfile({super.key});

  @override
  State<SellerProfile> createState() => _SellerProfileState();
}

class _SellerProfileState extends State<SellerProfile> {
  List<Seller>? sellers;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    //  Fetch data from API
    getData();
  }

  getData() async {
    // sellers = (await RemoteServiceSellerProfile().getSellers());
    try {
      Response response = await post(
          // https://reqres.in/api/register
          Uri.parse(API
              .sellerRead), //'http://localhost/fbsellers1/api/login/login.php'
          body: {'id': 1});

      if (response.statusCode == 200) {
        // print('Account created successfully');
        // var jsonData = jsonDecode(response.body);

        var jsonData = jsonDecode(response.body);
        // ignore: unused_local_variable
        var userData = jsonData["userData"];
        print(userData["seller_code"]);
        // print(jsonData);
        // ignore: use_build_context_synchronously
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SellerProfile()));
      } else {
        print('Failed');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('images/npkbh_logo.png'),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 5),
                      color: Colors.deepOrange.withOpacity(.2),
                      spreadRadius: 2,
                      blurRadius: 10)
                ]),
            child: const ListTile(
              title: Text('Name'),
              subtitle: Text('Forkan Uddin'),
              leading: Icon(CupertinoIcons.person),
              trailing: Icon(Icons.arrow_forward),
              tileColor: Colors.white,
            ),
          ),
        ],
      ),
    ));
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 5),
                color: Colors.deepOrange.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: const ListTile(
        title: Text('title'),
        subtitle: Text('subtitle'),
        // leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward),
        tileColor: Colors.white,
      ),
    );
  }
}
