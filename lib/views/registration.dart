import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternew/views/login.dart';
import 'package:flutternew/views/todo.dart';

class Regist extends StatelessWidget {
  TextEditingController namecontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
//  TextEditingController passwordcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin:Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.amber,
            Colors.purple
          ]
        )
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0)),
                color: Colors.white,
              ),
              height: MediaQuery.of(context).size.height - 200,
              child: Container(
                margin: EdgeInsets.all(20.0
                ),

                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 40.0,
                    ),
                    TextField(
                      controller: namecontroller,
                      decoration: InputDecoration(
                        hintText: "username",
                        border: OutlineInputBorder(

                        )
                      ),
                    ),

                    TextField(
                      controller: passwordcontroller,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "password",
                          border: OutlineInputBorder(

                          )
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    GestureDetector(
//                      Inkwell(){}
                      onTap: () {
//                        print("hello");
                      var getName=namecontroller.text;
                      var getpass=passwordcontroller.text;
                      if(getName=='admin'&& getpass=='1234')
                      {
                        print("Success");
//                        Navigator.push(context,
//                        )
                      }
                      else{
                        print("Invalid");
                        }


                      },
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin:Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.amber,
                                  Colors.purple
                                ]
                            )
                        ),
                        height: 50.0,
                        width: double.infinity,
                        child: Center(
                          child: Text("Resister",
                              //textAlign:TextAlign.center
                              style: TextStyle(fontSize: 23.0)),
                        ),
                      ),

                    ),
                    InkWell(
                      onTap: (){
//                        print("login clicked");
                        Navigator.push(context,
                            MaterialPageRoute(
                          builder: (context)=>Mylogin()
                        ));
                      },
                      child: Container(
                        height: 55.0,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.blueAccent,
                                  Colors.white
                                ]
                            ),
                            borderRadius: BorderRadius.circular(15.0)
                        ),
                        child:
                        Center(child: Text("Go to Login",style: TextStyle(fontSize: 23.0,color:Colors.white),)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
