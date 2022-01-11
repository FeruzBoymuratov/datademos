import 'package:flutter/material.dart';

import 'log_in.dart';

class SignUp extends StatefulWidget {
  static const String id = "sign_up";
  const SignUp({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<SignUp> {

  final usernameControll = TextEditingController();
  final passwordControll = TextEditingController();
  final emailControll = TextEditingController();
  final phoneNumberControll = TextEditingController();

  void _doSignUp(){
    String username = usernameControll.text.toString().trim();
    String password = passwordControll.text.toString().trim();
    String email = emailControll.text.toString().trim();
    String phoneNumber = phoneNumberControll.text.toString().trim();

    print(username);
    print(password);
    print(email);
    print(phoneNumber);
  }

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
              height: 27,
            ),
            const Center(
              child: SizedBox(
                  width: 150,
                  child: Text("Create Account", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400, letterSpacing: 1), textAlign: TextAlign.center,)),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              style: const TextStyle(color: Colors.white),
              controller: usernameControll,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_outline, color: Colors.grey.shade600,),
                hintText: "User Name",
                hintStyle: const TextStyle(color: Colors.white60, height: .6, fontWeight: FontWeight.bold),
                enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                disabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              style: const TextStyle(color: Colors.white),
              controller: emailControll,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined, color: Colors.grey.shade600,),
                hintText: "E_Mail",
                hintStyle: const TextStyle(color: Colors.white60, height: .6, fontWeight: FontWeight.bold),
                enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                disabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              style: const TextStyle(color: Colors.white),
              controller: phoneNumberControll,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone_outlined, color: Colors.grey.shade600,),
                hintText: "Phone Number",
                hintStyle: const TextStyle(color: Colors.white60, height: .6, fontWeight: FontWeight.bold),
                enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                disabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              style: const TextStyle(color: Colors.white),
              controller: passwordControll,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock_outline_rounded, color: Colors.grey.shade600,),
                hintText: "Password",
                hintStyle: const TextStyle(color: Colors.white60, height: .6, fontWeight: FontWeight.bold),
                enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                disabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
              ),
            ),
            const SizedBox(
              height: 15,
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
                  _doSignUp;
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?", style: TextStyle(color: Colors.grey.shade600, fontSize: 15, letterSpacing: 0.8, height: .7, fontWeight: FontWeight.bold),),
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, LogIn.id);
                  },
                      child: Text("SIGN IN", style: TextStyle(color: Colors.blueAccent.shade200, fontSize: 15, letterSpacing: 0.3, height: .8,),)
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
