import 'package:flutter/material.dart';

void main() => runApp (new MyClass());

class MyClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "My flutter app",
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        title: Center(child: Text('Title'),),
        actions: <Widget>[
          Icon(Icons.settings)
        ],
        // bottom: PreferredSize(
        //   preferredSize: Size.fromHeight(40.0),
        //   child: Text('This is a text from appbar')
        //   ),
        ),
      body: Material(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text('Dog'),
              subtitle: Text('This is an animal.'),
              trailing: Icon(Icons.access_time),
            ),
            ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text('Cat'),
              subtitle: Text('This is an animal.'),
              trailing: Icon(Icons.access_time),
            ),
            Padding(
              child: Text('Dog'),
              padding: EdgeInsets.all(30.0)
            ),
            Container(
              child: Text('Cog'),
              margin: EdgeInsets.symmetric(horizontal: 30.0),
            )
          ],
        ),
      ) 
    ),
  );
  }

}