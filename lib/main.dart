import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternew/views/login.dart';
import 'package:flutternew/views/registration.dart';

void main() {
  runApp(Hellooo());
}

class Hellooo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent,

        body : Regist(),
      ),
    );
  }
}

