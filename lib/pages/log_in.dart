import 'package:datademos/pages/sign_up.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  static const String id = "log_in";

  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF150C30),
      body: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage('https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
                  fit: BoxFit.cover,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text("Welcome Back!", style: TextStyle(color: Colors.white70, fontSize: 25, fontWeight: FontWeight.bold),),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text("Sign in to continue", style: TextStyle(color: Colors.white70, fontSize: 16, fontWeight: FontWeight.bold),),
            ),
            const SizedBox(
              height: 50,
            ),
            const TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_outline, color: Colors.grey,),
                hintText: "User Name",
                hintStyle: TextStyle(color: Colors.white60, height: .6, fontWeight: FontWeight.bold),
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock_outline, color: Colors.grey,),
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.white60, height: .6, fontWeight: FontWeight.bold),
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Text("Forgot Password?", style: TextStyle(color: Colors.grey.shade600, fontSize: 14, letterSpacing: 0.8, height: .7, fontWeight: FontWeight.bold),),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                color: Colors.blue,
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.blueAccent.shade700,
                      Colors.blue.shade800,
                      Colors.lightBlueAccent
                    ]),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward,  size: 45,),
                color: Colors.white,
                onPressed: (){

                },
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?", style: TextStyle(color: Colors.grey.shade600, fontSize: 15, letterSpacing: 0.8, height: .7, fontWeight: FontWeight.bold),),
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, SignUp.id);
                  },
                      child: Text("SIGN UP", style: TextStyle(color: Colors.blueAccent.shade200, fontSize: 15, letterSpacing: 0.3, height: .8,),)
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
