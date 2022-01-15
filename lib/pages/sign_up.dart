import 'package:datademos/model/account_model.dart';
import 'package:datademos/services/db_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'log_in.dart';

class SignUp extends StatefulWidget {
  static const String id = "sign_up";
  const SignUp({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<SignUp> {

  final emailControll = TextEditingController();
  final numberControll = TextEditingController();
  final adressControll = TextEditingController();

  void _doSignUp(){

    String email = emailControll.text.toString().trim();
    String number = numberControll.text.toString().trim();
    String adress = adressControll.text.toString().trim();

    var account = Account(email: email, number: number, adress: adress);

    HiveDB().storeAccount(account);

    var account2 = HiveDB().loadAccount();

    print(account2.email);
    print(account2.number);
    print(account2.adress);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF27736c),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
                child: Container(
                  margin: EdgeInsets.all(30),
                  width: double.infinity,
                  color: Color(0xFF27736c),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 40,),
                      Text("Welcome", style: TextStyle(color: Color(0xFF35a197), fontWeight: FontWeight.bold, fontSize: 19),),
                      SizedBox(height: 10,),
                      Text("Sign Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
                    ],
                  ),
                )
            ),

            Expanded(
              flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(30),
                    child: Column(
                      children: [
                        TextField(
                          controller: emailControll,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFF27736c), width: 2.1)),
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300, width: 0.1)),
                            labelText: "Email",
                            labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18, letterSpacing: 1),
                            hintText: "Enter Email",
                            hintStyle: TextStyle(color: Colors.grey.shade300, fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 20,),
                        TextField(
                          controller: numberControll,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFF27736c), width: 2.1)),
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 0.1)),
                            labelText: "Number",
                            labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18, letterSpacing: 1),
                            hintText: "Enter Number",
                            hintStyle: TextStyle(color: Colors.grey.shade300, fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 20,),
                        TextField(
                          controller: adressControll,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFF27736c), width: 2.1)),
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 0.1)),
                            labelText: "Address",
                            labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18, letterSpacing: 1),
                            hintText: "Enter Address",
                            hintStyle: TextStyle(color: Colors.grey.shade300, fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Color(0xFF27736c),
                          ),
                          child: Center(
                            child: TextButton(child: Text("Sign Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            onPressed: (){
                              _doSignUp();
                            },
                            ),
                          ),
                        ),
                        Center(
                          child: Text("OR", style: TextStyle(color: Colors.grey.shade300, fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.facebook, color: Colors.blueAccent.shade700,),
                            SizedBox(width: 30,),
                            Icon(Icons.flutter_dash_sharp, color: Colors.lightBlue,),
                            SizedBox(width: 30,),
                            Icon(Icons.linked_camera_rounded,),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text("Already have an account?", style: TextStyle(color: Colors.grey.shade300, fontWeight: FontWeight.bold),),
                            ),
                            SizedBox(width: 1,),
                            Center(
                              child: TextButton(
                                child: Text("SignIn",
                                  style: TextStyle(
                                      color: Color(0xFF27736c),
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: (){
                                  Navigator.pushNamed(context, LogIn.id);
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
