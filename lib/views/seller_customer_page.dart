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

  Future getAllCategory() async {
    var url = API.sellerCustomerRead;
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      setState(() {
        categoryItemList = jsonData['result'];
      });
    }
    // print(categoryItemList);
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
        title: const Text('Customer List'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              InputDecorator(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  contentPadding: const EdgeInsets.all(10),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                      isDense: true,
                      value: selectedValue,
                      isExpanded: true,
                      menuMaxHeight: 350,
                      items: [
                        const DropdownMenuItem(
                            value: "", child: Text('Select Course')),
                        ...categoryItemList.map<DropdownMenuItem<String>>((e) {
                          return DropdownMenuItem(
                              value: e['id'].toString(),
                              child: Text(e['name']));
                        }).toList(),
                      ],
                      onChanged: (value) {
                        print("Selected value $value");
                        setState(() {
                          selectedValue = value!;
                        });
                      }),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InputDecorator(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  contentPadding: const EdgeInsets.all(10),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                      isDense: true,
                      value: selectedValue,
                      isExpanded: true,
                      menuMaxHeight: 350,
                      items: [
                        const DropdownMenuItem(
                            value: "", child: Text('Select Course')),
                        ...categoryItemList.map<DropdownMenuItem<String>>((e) {
                          return DropdownMenuItem(
                              value: e['id'].toString(),
                              child: Text(e['name']));
                        }).toList(),
                      ],
                      onChanged: (value) {
                        print("Selected value $value");
                        setState(() {
                          selectedValue = value!;
                        });
                      }),
                ),
              ),
            ],
          )),
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
