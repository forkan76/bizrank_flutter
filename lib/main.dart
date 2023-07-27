import 'package:flutter/material.dart';
//To use REST api
import 'dart:async';
import 'package:http/http.dart' as http;
//To use REST api end
import 'package:npkbh/Fragment/HomeFragment.dart';
import 'package:npkbh/Fragment/PersonFragment.dart';
import 'package:npkbh/views/home_page.dart';

main() {
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.amber),
        color: Colors.blue,
        debugShowCheckedModeBanner: false,
        home: const HomePage());
  }
}

// class _MyAppState extends State<MyApp>{
//
// }

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override

  // late List<String> posts;
  // Future<bool> _getPosts() async{
  //   String serviceUrl = "https://br-isgalleon.com/api/attendance/get_attendance.php";
  //   var response = await http.get(serviceUrl as Uri);
  //   // setState((){
  //         posts = json.decode(response.body.toString());
  //   // });
  //   return false;
  // }

  Future<http.Response> fetchPost() {
    return http.get('https://jsonplaceholder.typicode.com/posts/1' as Uri);
  }

  // Future<List<Fruit>> fetchFruit() async {
  //   final response = await http.get(url as Uri);
  // }
  // String url = "https://br-isgalleon.com/api/attendance/get_attendance.php";
  // @override
  // void initState(){
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("NPKBH"),
            bottom: const TabBar(
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.home), text: "Home"),
                Tab(icon: Icon(Icons.access_alarm), text: "Profile"),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              HomeFragment(),
              PersonFragment(),
            ],
          ),
        ));
  }
}

class HomeActivityBackup extends StatelessWidget {
  HomeActivityBackup({super.key});

  // HomeActivity({super.key});

  MySnackBar(message, context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  var MyItems = [
    {
      "img":
          "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png",
      "title": "NPKBH1"
    },
    {
      "img":
          "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png",
      "title": "NPKBH2"
    },
    {
      "img":
          "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png",
      "title": "NPKBH3"
    },
    {
      "img":
          "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png",
      "title": "NPKBH4"
    },
    {
      "img":
          "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png",
      "title": "NPKBH5"
    },
    {
      "img":
          "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png",
      "title": "NPKBH6"
    },
    {
      "img":
          "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png",
      "title": "NPKBH7"
    },
    {
      "img":
          "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png",
      "title": "NPKBH8"
    }
  ];

  MyAlertDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
            title: const Text("Alert!"),
            content: const Text("Do you want to delete"),
            actions: [
              TextButton(
                  onPressed: () {
                    MySnackBar("Delete success", context);
                    Navigator.of(context).pop();
                  },
                  child: const Text("Yes")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("No"))
            ],
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          titleSpacing: 10,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 10,
          backgroundColor: Colors.green,
          onPressed: () {
            MySnackBar("I am floating action button.", context);
          },
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: "Contact"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          ],
          onTap: (int index) {
            if (index == 0) {
              MySnackBar("I am home bottom menu.", context);
            }
            if (index == 1) {
              MySnackBar("I am contact bottom menu.", context);
            }
            if (index == 2) {
              MySnackBar("I am profile bottom menu.", context);
            }
          },
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  child: UserAccountsDrawerHeader(
                decoration: const BoxDecoration(color: Colors.black),
                accountName: const Text("Forkan"),
                accountEmail: const Text("forkan76@gmail.com"),
                // currentAccountPicture: Image.network("https://pixlok.com/wp-content/uploads/2021/05/flutter-logo-768x768.jpg"),
                onDetailsPressed: () {
                  MySnackBar('This is profile', context);
                },
              )),
              ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text("Home"),
                  onTap: () {
                    MySnackBar("Drawyer home", context);
                  }),
              ListTile(
                  leading: const Icon(Icons.message),
                  title: const Text("Contact"),
                  onTap: () {
                    MySnackBar("Drawyer contact", context);
                  }),
              ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text("Profile"),
                  onTap: () {
                    MySnackBar("Drawyer profile", context);
                  }),
              ListTile(
                  leading: const Icon(Icons.email),
                  title: const Text("Email"),
                  onTap: () {
                    MySnackBar("Drawyer email", context);
                  }),
              ListTile(
                  leading: const Icon(Icons.phone),
                  title: const Text("Phone"),
                  onTap: () {
                    MySnackBar("Drawyer phone", context);
                  })
            ],
          ),
        ),
        // endDrawer: (),

        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 150,
              width: 150,
              margin: const EdgeInsets.all(30),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(color: Colors.black, width: 6),
              ),
              child: Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  shadowColor: const Color.fromRGBO(33, 191, 115, 1),
                  color: const Color.fromRGBO(33, 191, 115, 1),
                  elevation: 80,
                  child: const SizedBox(
                    height: 100,
                    width: 100,
                    child: Center(
                      child: Text('This is card'),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 150,
              width: 150,
              margin: const EdgeInsets.all(30),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(color: Colors.black, width: 6),
              ),
              child: Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  shadowColor: const Color.fromRGBO(33, 191, 115, 1),
                  color: const Color.fromRGBO(33, 191, 115, 1),
                  elevation: 80,
                  child: const SizedBox(
                    height: 150,
                    width: 150,
                    child: Center(
                      child: Text('This is card'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )

        // body: Center(
        //   child: Card(
        //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        //     shadowColor: Color.fromRGBO(33, 191, 115, 1),
        //     color: Color.fromRGBO(33, 191, 115, 1),
        //     elevation: 80,
        //     child: SizedBox(
        //       height: 200,
        //       width: 200,
        //       child: Center(child: Text('This is card'),),
        //     ),
        //   ),
        // ),

        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: [
        //     // ElevatedButton(onPressed: (){
        //     //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity1("This is from hom to activit 1")));
        //     // }, child: Text("This is from home to activity 1")),
        //     // ElevatedButton(onPressed: (){
        //     //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2("This is from hom to activit 2")));
        //     // }, child: Text("This is from home to activity 2"))
        //   ],
        // ),
        );

    // return DefaultTabController(
    //     length: 8,
    //     child: Scaffold(
    //       appBar: AppBar(
    //         title: Text("My App"),
    //         bottom: TabBar(
    //           isScrollable: true,
    //           tabs: [
    //             Tab(icon: Icon(Icons.home), text: "Home"),
    //             Tab(icon: Icon(Icons.search), text: "Search"),
    //             Tab(icon: Icon(Icons.settings), text: "Settings"),
    //             Tab(icon: Icon(Icons.email), text: "Email"),
    //             Tab(icon: Icon(Icons.contact_mail), text: "Contact"),
    //             Tab(icon: Icon(Icons.person), text: "Person"),
    //             Tab(icon: Icon(Icons.access_alarm), text: "Alarm"),
    //             Tab(icon: Icon(Icons.account_balance), text: "Balance"),
    //         ],
    //       ),
    //     ),
    //       body: TabBarView(
    //         children: [
    //           AlarmFragment(),
    //           SearchFragment(),
    //           SettingsFragment(),
    //           EmailFragment(),
    //           ContactFragment(),
    //           PersonFragment(),
    //           AlarmFragment(),
    //           BalanceFragment()
    //         ],
    //       ),
    // )
    // );

    // ButtonStyle buttonStyle=ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 60));

    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('NPKBH'),
    //     actions: [
    //       IconButton(onPressed: (){MySnackBar("Comments", context);}, icon: Icon(Icons.access_alarm)),
    //       IconButton(onPressed: (){MySnackBar("Comments", context);}, icon: Icon(Icons.access_alarm)),
    //       IconButton(onPressed: (){MySnackBar("Comments", context);}, icon: Icon(Icons.access_alarm)),
    //       IconButton(onPressed: (){MySnackBar("Comments", context);}, icon: Icon(Icons.access_alarm)),
    //     ],
    //   ),
    //   body: ListView.builder(
    //     itemCount: MyItems.length,
    //     itemBuilder: (context, index){
    //       return GestureDetector(
    //         onTap: (){MySnackBar(MyItems[index]['title'], context);},
    //         child: Container(
    //           margin: EdgeInsets.all(10),
    //           width: double.infinity,
    //           height: 200,
    //           child: Image.network(MyItems[index]["img"]!!, fit: BoxFit.fill)
    //         ),
    //       );
    //     },
    //   ),
    //   // body: Column(
    //   //   mainAxisAlignment: MainAxisAlignment.start,
    //   //   children: [
    //   //     Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'First Name'),),),
    //   //     Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'First Name'),),),
    //   //     Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'First Name'),),),
    //   //     Padding(padding: EdgeInsets.all(20), child: ElevatedButton(onPressed: (){}, child: Text("Submit"),),)
    //   //   ],
    //   // ),
    //   // body: Center(
    //   //   child: ElevatedButton(child: Text("Click Me"), onPressed: (){MyAlertDialog(context);},),
    //   // ),
    //   // body: Row(
    //   //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   //   children: [
    //   //     TextButton(onPressed: (){MySnackBar("I am Text Button", context);}, child: Text("Text Button")),
    //   //     TextButton(onPressed: (){MySnackBar("I am Elevated Button", context);}, child: Text("Elevated Button")),
    //   //     TextButton(onPressed: (){MySnackBar("I am Outline Button", context);}, child: Text("Outline Button")),
    //   //   ],
    //   // ),
    //   drawer: Drawer(
    //     child: ListView(
    //       children: [
    //         DrawerHeader(
    //             child: UserAccountsDrawerHeader(
    //               decoration: BoxDecoration(color: Colors.black),
    //               accountName: Text("Forkan"),
    //               accountEmail: Text("forkan76@gmail.com"),
    //               currentAccountPicture: Image.network("https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixlok.com%2Fimages%2Fflutter-logo-png-image-free-download%2F&psig=AOvVaw3ibeF3IGxv4Sd7dN5mCo-Q&ust=1677070110512000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCNjngZPTpv0CFQAAAAAdAAAAABAE"),
    //               onDetailsPressed: (){MySnackBar('This is profile', context);},
    //             )
    //         ),
    //         ListTile(leading: Icon(Icons.home), title: Text("Home"), onTap: (){MySnackBar("Drawyer home", context);}),
    //         ListTile(leading: Icon(Icons.message), title: Text("Contact"), onTap: (){MySnackBar("Drawyer contact", context);}),
    //         ListTile(leading: Icon(Icons.person), title: Text("Profile"), onTap: (){MySnackBar("Drawyer profile", context);}),
    //         ListTile(leading: Icon(Icons.email), title: Text("Email"), onTap: (){MySnackBar("Drawyer email", context);}),
    //         ListTile(leading: Icon(Icons.phone), title: Text("Phone"), onTap: (){MySnackBar("Drawyer phone", context);})
    //       ],
    //     ),
    //   ),
    //   // endDrawer: (),
    //   bottomNavigationBar: BottomNavigationBar(
    //     currentIndex: 0,
    //     items: [
    //       BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    //       BottomNavigationBarItem(icon: Icon(Icons.message), label: "Contact"),
    //       BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
    //     ],
    //     onTap: (int index){
    //       if(index == 0){
    //         MySnackBar("I am home bottom menu.", context);
    //       }
    //       if(index == 1){
    //         MySnackBar("I am contact bottom menu.", context);
    //       }
    //       if(index == 2){
    //         MySnackBar("I am profile bottom menu.", context);
    //       }
    //     },
    //   ),
    //   floatingActionButton: FloatingActionButton(
    //     elevation: 10,
    //     child: Icon(Icons.add),
    //     backgroundColor: Colors.green,
    //     onPressed: (){
    //       MySnackBar("I am floating action button.", context);
    //     },
    //   ),
    // );
  }
}

class Activity1 extends StatelessWidget {
  String msg;
  Activity1(this.msg, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Activity 1"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Activity2("")));
            },
            child: Text(msg)),
      ),
    );
  }
}

class Activity2 extends StatelessWidget {
  String msg;
  Activity2(this.msg, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Activity 2"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Activity1("")));
            },
            child: Text(msg)),
      ),
    );
  }
}
