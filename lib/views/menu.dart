

import 'package:flutter/material.dart';
import 'package:flutternew/views/pg1.dart';
import 'package:flutternew/views/pg2.dart';
import 'package:flutternew/views/pg3.dart';
import 'package:flutternew/views/pg4.dart';

class MyMenu extends StatefulWidget {
  @override
  _MyMenuState createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  int mycurrind =0;
  final mypages=[Page1(),Page2(),Page3(),Page4()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:mypages[mycurrind],


         bottomNavigationBar: BottomNavigationBar(
           type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.blue,
          currentIndex: mycurrind,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.white,),
              title: Text("Home",style: TextStyle(color: Colors.white),),
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.view_list),
              title: Text("list"),
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("Search"),
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              title: Text("Person"),
              backgroundColor: Colors.red,
            )
          ],

           onTap: (index){
             setState(() {
               mycurrind=index;
             });

           },

         ),
      )
      );
  }
}
