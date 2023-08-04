import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../api_connection/api_connection.dart';

class SellerCustomer extends StatefulWidget {
  const SellerCustomer({super.key});

  @override
  State<SellerCustomer> createState() => _SellerCustomerState();
}

class _SellerCustomerState extends State<SellerCustomer> {
  String selectedValue = "";
  List categoryItemList = [];
  var dataList;

  Future getAllCategory() async {
    var url = API.sellerCustomerRead;
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      setState(() {
        categoryItemList = jsonData['result'];
        dataList = jsonData['result'];
      });
    }
    print(categoryItemList);
  }

  // Future getPostByCategory() async {
  //   var url = API.sellerCustomerRead;
  //   var response = await http.post(Uri.parse(url), body: {"category_name"});
  //   if (response.statusCode == 200) {
  //     var jsonData = json.decode(response.body);
  //     return jsonData;
  //   }
  // }

  @override
  void initState() {
    super.initState();
    getAllCategory();
  }

  // TextEditingController sellerCode = TextEditingController();

  // late String countryname, message;
  // late bool error;
  // var data;
  // List categoryItemlist = [];

  // Future<void> getAllCategory() async {
  //   var baseUrl = API.sellerRead;

  //   http.Response response =
  //       await http.post(Uri.parse(baseUrl), body: {'response_type': 'list'});

  //   if (response.statusCode == 200) {
  //     var jsonData = json.decode(response.body);
  //     setState(() {
  //       categoryItemlist = jsonData;
  //     });
  //   } else {
  //     setState(() {
  //       error = true;
  //       message = "Error during fetching data";
  //     });
  //   }
  // }

  // @override
  // void initState() {
  //   error = false;
  //   message = "";

  //   super.initState();
  //   // registerCustomer();
  //   getAllCategory();
  // }

  // List data = [];
  // int _value = 1;

  // getData() async {
  //   final res = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
  //   data = jsonDecode(res.body);
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    // getData();
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Customer'),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            Container(
              child: DropdownButton(
                  isExpanded: true,
                  value: selectedValue,
                  hint: const Text('Select Customer'),
                  items: null,
                  onChanged: null),
            )
          ],
        ),
      ),
    );
  }
}

// class RemoteService {
//   Future<List<SellerCustomer>?> getCustomers() async {
//     var client = http.Client();

//     String serviceUrl = "https://jsonplaceholder.typicode.com/posts";
//     var uri = Uri.parse(serviceUrl);
//     var response = await client.get(uri);
//     if (response.statusCode == 200) {
//       var json = response.body;
//       return jsonDecode(json);
//     }
//     return null;
//   }
// }
//
//   try{
//
//   } catch(Exception exception){
//
//   }
//
// }
