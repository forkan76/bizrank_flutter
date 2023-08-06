import 'package:flutter/material.dart';

class DropDownHelper extends StatefulWidget {
  const DropDownHelper({super.key});

  @override
  State<DropDownHelper> createState() => _DropDownHelperState();
}

class _DropDownHelperState extends State<DropDownHelper> {
  List dropDownListData = [
    {'title': 'BCA', 'value': 1},
    {'title': 'MCA', 'value': 2},
    {'title': 'B. Tech', 'value': 3},
    {'title': 'M. Tech', 'value': 4},
  ];
  String defaultValue = "";
  String defaultValueSecond = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("DropDown Example")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(children: [
          const SizedBox(height: 20),
          InputDecorator(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
              contentPadding: const EdgeInsets.all(10),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                  isDense: true,
                  value: defaultValue,
                  isExpanded: true,
                  menuMaxHeight: 350,
                  items: [
                    const DropdownMenuItem(
                        value: "", child: Text('Select Course')),
                    ...dropDownListData.map<DropdownMenuItem<String>>((e) {
                      return DropdownMenuItem(
                          value: e['value'].toString(),
                          child: Text(e['title']));
                    }).toList(),
                  ],
                  onChanged: (value) {
                    print("Selected value $value");
                    setState(() {
                      defaultValue = value!;
                    });
                  }),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InputDecorator(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
              contentPadding: const EdgeInsets.all(10),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                  isDense: true,
                  value: defaultValueSecond,
                  isExpanded: true,
                  menuMaxHeight: 350,
                  items: [
                    const DropdownMenuItem(
                        value: "", child: Text('Select Course')),
                    ...dropDownListData.map<DropdownMenuItem<String>>((e) {
                      return DropdownMenuItem(
                          value: e['value'].toString(),
                          child: Text(e['title']));
                    }).toList(),
                  ],
                  onChanged: (value) {
                    print("Selected value $value");
                    setState(() {
                      defaultValueSecond = value!;
                    });
                  }),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                if (defaultValue == "") {
                  print("Please select a course");
                } else {
                  print("User selected course $defaultValue");
                }
              },
              child: const Text('Submit'))
        ]),
      ),
    );
  }
}
