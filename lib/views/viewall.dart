import 'package:flutter/material.dart';

class Viewall extends StatelessWidget {
  var data = [
    {"image":"https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80","name": "reul", "age": 22, "admn": 232},
    {"image":"https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80","name": "Rahul", "age": 23, "admn": 2332},
    {"image":"https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80","name": "tom", "age": 26, "admn": 23562},
    {"image":"https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80","name": "tommm", "age":32, "admn": 23212}
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
                    leading: 
                    ClipOval(
                      child: Image(
                        height: 90.0,
                        width: 90.0,
                        image: NetworkImage(data[index]["image"]),
                      ),
                    ),
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