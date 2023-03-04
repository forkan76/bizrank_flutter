import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:npkbh/main.dart';

class HomeFragment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Activity1()));
        }, child: Text("Go Activity 1")),
      ),
    );
  }
}