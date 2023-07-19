import 'package:flutter/material.dart';

import '../models/seller.dart';
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

  getData() async{
    sellers = (await RemoteServiceSellerProfile().getSellers());
    if(sellers != null){
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Seller Profile")),
        body:const Text('ok')
    );
  }
}
