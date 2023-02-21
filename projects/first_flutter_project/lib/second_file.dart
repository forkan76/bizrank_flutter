import 'dart:math';

import 'package:first_flutter_project/util.dart';
import 'package:flutter/material.dart';

class SecondClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
        // color: Colors.yellow,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          
        Container(
          height: 500.0,
          width: 300.0,
          // alignment: Alignment(0, 0),
          // // decoration: BoxDecoration(),
          // decoration: BoxDecoration(
          //   gradient: RadialGradient(
          //     colors: [Colors.green, Colors.blue, Colors.orange, Colors.pink],
          //     stops: [0.2,0.5,0.7,1],
          //     center: Alignment(0.1, 0.3),
          //     focal: Alignment(-0.1, 0.6)
          //   )
          // ),
          color: lightPurpleColor,
          // child: GestureDetector(
          //   onTap: (){
          //     Scaffold.of(context).showSnackBar(new SnackBar(
          //       content: new Text('It was pressed'),
          //       duration: Duration(seconds: 2),
          //     ));
          //   },
          //   child: Text(generateNumbers(), textDirection: TextDirection.ltr, style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),),
          //   // child: Text("A random number between 0 to 20 is ${generateNumbers()}", textDirection: TextDirection.ltr,),
          // )
        ),
        Container(
          height: 500.0,
          width: 100.0,
          color: Colors.green,
        )  
          ],
        ));
  }
}

String generateNumbers(){
  var r = Random();
  var i = r.nextInt(20);
  return "A random number between 0 to 20 is $i";
}