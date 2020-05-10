import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternew/views/registration.dart';
import 'package:flutternew/views/viewall.dart';

class Mylogin extends StatelessWidget {

  TextEditingController usertextcontroller=TextEditingController();
  TextEditingController passtextcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:
        Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: usertextcontroller,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.perm_identity),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: "User Name"),
              ),
              SizedBox(
                height: 10.0,
              ),
              //Text("PassWord"),
              TextField(
                controller: passtextcontroller,
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: "pword"),
              ),
              SizedBox(
                height: 10.0,
              ),
              GestureDetector(
                onTap: () {
                  // body: Regist();
                  var getUsername=usertextcontroller.text;
                  var getPasword=passtextcontroller.text;
                  if(getUsername =='admin'&& getPasword =='1234')
                  {
//                    print("success");
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context)=>Viewall()
                        ));
                  }
                  else{
                    print("invalid");
                    print(getUsername);
                    print(getPasword);
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.red,
                  ),
                  height: 50.0,
                  width: double.infinity,
                  child: Center(
                    child: Text("LOGIN",
                        //textAlign:TextAlign.center
                        style: TextStyle(fontSize: 23.0)),
                  ),
                ),

              ),

            ],
          ),
        ),
      ),
    );

  }
}
