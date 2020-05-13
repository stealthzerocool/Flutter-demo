//
//
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//
//class MyCounter extends StatefulWidget {
//
//  @override
//  _MyCounterState createState() => _MyCounterState();
//}
//
//class _MyCounterState extends State<MyCounter> {
//  int _counter=1;
//  void _increment(){
//  setState(() {
//    _counter++;
//  });
//  }
//
//  void _dec(){
//    setState(() {
//      _counter--;
//    });
//  }
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      home: Scaffold(
//        body: Container(
//          decoration: BoxDecoration(
//            image: DecorationImage(
//              image: AssetImage("images/bck.jpg"),
//                  fit: BoxFit.fill
//
//            )
//          ),
//          child: Row(
//            children: <Widget>[
//              Expanded(
//                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  crossAxisAlignment: CrossAxisAlignment.center,
//                  children: <Widget>[
//                    FlatButton(
//                      onPressed:(){
//                          _increment();
//
//                      },
//
//                      child: Text("Add",style: TextStyle(fontSize: 20.0),),
//                    ),
//                    FlatButton(
//                      onPressed:(){
//                        _dec();
//
//                      },
////
////                      child: Text("Dec",style: TextStyle(fontSize: 20.0),
////                      Boxdec),
//                    ),
//                    Text(_counter.toString(),style: TextStyle(fontSize:20.0, color: Colors.white))
//                  ],
//                ),
//              )
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
