import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//To use REST api
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
//To use REST api end

class PersonFragment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // Future<bool> _getPosts() async{
    //   String serviceUrl = "";
    // }
    //
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 60)
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "First Name"),),),
        Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Last Name"),),),
        Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Email Address"),),),
        Padding(padding: EdgeInsets.all(10), child: ElevatedButton(onPressed: (){}, child: Text("Submit"), style: buttonStyle,),)
      ],
    );
  }
}