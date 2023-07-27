import 'package:flutter/material.dart';
//To use REST api
//To use REST api end

class PersonFragment extends StatelessWidget{
  const PersonFragment({super.key});

  @override
  Widget build(BuildContext context) {

    // Future<bool> _getPosts() async{
    //   String serviceUrl = "";
    // }
    //
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: const Size(double.infinity, 60)
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "First Name"),),),
        const Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Last Name"),),),
        const Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Email Address"),),),
        Padding(padding: const EdgeInsets.all(10), child: ElevatedButton(onPressed: (){}, style: buttonStyle, child: const Text("Submit"),),)
      ],
    );
  }
}