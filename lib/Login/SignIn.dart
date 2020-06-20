import 'package:flutter/material.dart';
import 'package:orgconnect/Util.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Utilities().lighBrown,
        body: Stack (children: <Widget>[

          Align(alignment: Alignment.center,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 50,
              ),
              SizedBox(
                height: 50,
              ),
              Text("Login With: "),
              SizedBox(height: 5,),
              Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(30.0),
                color: Utilities().darkBrown,
                child: MaterialButton(
                  minWidth: 200,
                  padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  onPressed: () {
                  },
                  child: Text("PHONE",
                      textAlign: TextAlign.center,
                      style:  TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                          , fontFamily: "HANDGOTN")),
                ),
              ),
              SizedBox(height: 5,),
              Text("Or"),

              SizedBox(height: 5,),
              Material(
                elevation: 20.0,
                borderRadius: BorderRadius.circular(30.0),
                color: Utilities().darkBrown,
                child: MaterialButton(
                  minWidth: 200,
                  padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  onPressed: () {
                  },
                  child: Text("EMAIL",
                      textAlign: TextAlign.center,
                      style:  TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                          , fontFamily: "HANDGOTN")),
                ),
              )

            ],
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Align(alignment: Alignment.bottomCenter, child: Text(
              "Connecting you to\nLocally\nOrganic Produce",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color.fromRGBO(128, 66, 0, 1.0)),
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Align(alignment: Alignment.topCenter, child:
            Text(
              "OrgConnect",
              style: TextStyle(
                  fontSize: 22,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),),
          )


        ],)
      ),
    );
  }
}
