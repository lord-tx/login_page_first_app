import 'package:flutter/material.dart';
import 'package:login_page_first_app/screens/loginscreen.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      theme: ThemeData(
        primarySwatch: Colors.purple
    ),
    );
  }
}
