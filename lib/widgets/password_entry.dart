import 'package:flutter/material.dart';

class PasswordEntry extends StatefulWidget {

  bool seeString = true;

  @override
  _PasswordEntryState createState() => _PasswordEntryState();
}

class _PasswordEntryState extends State<PasswordEntry> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          // margin: EdgeInsets.only(top:5),
          width: MediaQuery.of(context).size.width * (2/3),
          child: TextField(
            obscureText: widget.seeString,
            decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintText: "Password"
            ),
          ),
        ),
        // SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
              setState(() {
                widget.seeString = widget.seeString ? false : true;
              });
            },
            child: widget.seeString
                ?
            Icon(Icons.remove_red_eye_outlined, size: 15,)
                :
            Icon(Icons.remove_red_eye_rounded, size: 15),
          ),
        ),
      ],
    );
  }
}
