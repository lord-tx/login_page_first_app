import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:login_page_first_app/widgets/password_entry.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mimi Widgets"),
        leading: Icon(Icons.menu),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(vertical: 100),
        children: [
          Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                  'images/flutter_logo.png',
                height: 40,
                width: 40,
              ),
            ),
            // Text("Logo"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width * (2/3),
                child: TextField(
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: "Email"
                  ),
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PasswordEntry(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text("Log In"),
                onPressed: (){}
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("New User? "),
                  GestureDetector(
                    onTap: (){
                      print("Sign Up Clicked!");
                    },
                    child: Text(
                      "Sign Up!",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.purple
                      ),
                    )
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SignInButton(
                    Buttons.GitHub,
                    mini: true,
                    onPressed: () {},
                  ),
                  SignInButton(
                    Buttons.Facebook,
                    mini: true,
                    onPressed: () {},
                  ),
                  SignInButton(
                    Buttons.Twitter,
                    mini: true,
                    onPressed: () {},
                  )
                ]
              ),
            )
          ],
        ),
        ]
      ),
    );
  }
}
