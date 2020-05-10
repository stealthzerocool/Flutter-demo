import 'package:flutter/material.dart';

class Viewall extends StatelessWidget {
  var data = [
    {"name": "reul", "age": 22, "admn": 232},
    {"name": "Rahul", "age": 23, "admn": 2332},
    {"name": "tom", "age": 26, "admn": 23562},
    {"name": "tommm", "age":32, "admn": 23212}
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3.0,
                  child: ListTile(
                  leading: Icon(Icons.access_alarm,size: 40.0,),
                  trailing: int.parse(data[index]["age"].toString()) > 25 ? Icon(Icons.print):Icon(Icons.clear),

                  title: Text(
                    "Name :" + data[index]["name"],
                    style: TextStyle(color: Colors.redAccent),
                  ),
                  subtitle: Text("Age :" +
                      data[index]["age"].toString() +
                      "\n" +
                      "Admn no:" +
                      data[index]["admn"].toString()),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
