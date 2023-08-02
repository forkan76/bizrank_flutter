import 'dart:convert';

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
        appBar: AppBar(title: const Text("Seller Profile")),
        body: const Text('sellerList')
        // Visibility(
        //   visible: isLoaded,
        //   // replacement: const Center(child: CircularProgressIndicator()),
        //   child: ListView.builder(itemBuilder: (context, index) {
        //     const Text('data');
        //   }),
        // )
        );
  }
}
