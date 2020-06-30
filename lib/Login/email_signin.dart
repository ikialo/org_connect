import 'package:flutter/material.dart';

class EmailSignIn extends StatefulWidget {
  @override
  _EmailSignInState createState() => _EmailSignInState();
}

class _EmailSignInState extends State<EmailSignIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Stack(children: <Widget>[

      Container(
        margin: EdgeInsets.only(top: 150),
        child: Align(alignment: Alignment.topCenter, child: Hero(
            tag: "icon",
            child: CircleAvatar()),),
      )
    ],),),);
  }
}
