import 'package:flutter/material.dart';

import '../models/seller.dart';
import '../services/remote_service_seller_profile.dart';

class SellerProfile extends StatefulWidget {
  const SellerProfile({super.key});

  @override
  State<SellerProfile> createState() => _SellerProfileState();
}

class _SellerProfileState extends State<SellerProfile> {
  List<Seller>? seller;
  var isLoaded = false;


  getData() async{
    seller = (await RemoteServiceSellerProfile().getSellers());
    if(seller != null){
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Seller Profile")),
        body:
        Visibility(
          visible: isLoaded,
          replacement: const Center(
            child: CircularProgressIndicator(),
          ),
          child: ListView.builder(
              itemCount: 10, itemBuilder: (context, index){
            return Container(
              child: Text('ok'),
              // child: Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children:
              //   [
              //     // Text(seller![index].id as String, maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              //     // Text(seller![index].sellerCode ?? '', maxLines: 3,)
              //
              //   ],
              // ),
            );
          }),
        )
    );
  }
}
