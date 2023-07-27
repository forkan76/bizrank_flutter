
import 'package:flutter/material.dart';


class SellerCustomer extends StatefulWidget {
  const SellerCustomer( {super.key});

  @override
  State<SellerCustomer> createState() => _SellerCustomerState();
}

class _SellerCustomerState extends State<SellerCustomer> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // registerCustomer();
  }

  // registerCustomer() async
  // {
  //   SellerCustomer customerModel = SellerCustomer(
  //     1,
  //     1 as String,
  //     "Forkan",
  //     "mobile01",
  //     "mobile02",
  //     1,
  //     2,
  //     1219,
  //     "address",
  //     1,
  //     "areaOther",
  //     true,
  //     1,
  //     DateTime(1990,12,4),
  //     key: null,
  //     null,
  //
  //
  //   );
  //
  //   try
  //   {
  //     await http.post(
  //       Uri.parse(API.sellerCustomerRead),
  //       body: customerModel.toJson();
  //     );
  //   }
  //   catch(e)
  //   {
  //
  //   }
  // }




  @override
  Widget build(BuildContext context) {
    return const Scaffold(

    );
  }
}

//
//   try{
//
//   } catch(Exception exception){
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//
//     );
//   }
// }
