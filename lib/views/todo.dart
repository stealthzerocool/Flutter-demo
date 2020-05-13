import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  TextEditingController num = TextEditingController();
  var mytask = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:
        SingleChildScrollView(
//          margin: EdgeInsets.all(20.0),
            child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 30.0,
                ),
                TextField(
                  controller: num,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: "Enter text",
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                RaisedButton(
                  onPressed: () {
                    var nm = num.text;
                    num.clear();
                    setState(() {
                      mytask.add(nm);

                    });

                  },
                  child: Text("Add",style: TextStyle(color: Colors.purple,

                    ),

                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: mytask.length == null ? 0 : mytask.length,
                  itemBuilder: (context, index) {

                    return Card(
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(Icons.alarm,color: Colors.red,),
                        trailing:
                        GestureDetector(
                            onTap: (){
                              setState(() {
                                mytask.removeAt(index);
                              });
                            },
                            child: Icon(Icons.delete,color: Colors.redAccent,)

                      ),
                      title: Text(mytask[index].toString()),
                      ),
                    );
                  },
                )
              ],
            ),

        ),
      ),
    );
  }
}
