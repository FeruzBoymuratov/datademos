import 'package:datademos/model/user_model.dart';
import 'package:datademos/pages/sign_up.dart';
import 'package:datademos/services/db_service.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class LogIn extends StatefulWidget {
  static const String id = "log_in";

  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void _doSignIn(){

    String email = emailController.text.toString().trim();
    String password = passwordController.text.toString().trim();

    var user = User(email: email, password: password);

    HiveDB().storeUser(user);

    var user2 = HiveDB().loadUser();

    print(user2.email);
    print(user2.password);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF27736c),
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
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://monteluke.com.au/wp-content/gallery/linkedin-profile-pictures/2.jpg"),
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text("Welcome", style: TextStyle(color: Color(0xFF35a197), fontWeight: FontWeight.bold, fontSize: 19),),
                      SizedBox(height: 10,),
                      Text("Sign In", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
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
                          controller: emailController,
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
                          controller: passwordController,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFF27736c), width: 2.1)),
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 0.1)),
                            labelText: "Password",
                            labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18, letterSpacing: 1),
                            hintText: "Enter Password",
                            hintStyle: TextStyle(color: Colors.grey.shade300, fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Center(
                          child: Text("Forget Password?", style: TextStyle(color: Colors.grey.shade300, fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 40,
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Color(0xFF27736c),
                          ),
                          child: Center(
                            child: TextButton(child: Text("Sign In", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                              onPressed: (){
                                _doSignIn();
                              },
                            ),
                          ),
                        ),
                        Center(
                          child: Text("OR", style: TextStyle(color: Colors.grey.shade300, fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 34,),
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
                        SizedBox(height: 60,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text("Don't have an account?", style: TextStyle(color: Colors.grey.shade300, fontWeight: FontWeight.bold),),
                            ),
                            SizedBox(width: 1,),
                            Center(
                              child: TextButton(
                                child: Text("SignUp",
                                  style: TextStyle(
                                      color: Color(0xFF27736c),
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: (){
                                  Navigator.pushNamed(context, SignUp.id);
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
