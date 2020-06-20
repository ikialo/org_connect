import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:orgconnect/Home/home_page.dart';
import 'package:orgconnect/Login/SignIn.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:orgconnect/Util.dart';
// the splash screen will run to see if person is signed in or not and more to appropriate page

class SplashScreenOrg extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreenOrg> {
  // instantiate Firebase and declare variaanles
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  SharedPreferences prefs;

  bool _log = false;
  bool isLoading = false;
  bool isLoggedIn = false;
  FirebaseUser currentUser;

  startTime(navigationPage) async {
    var _duration = new Duration(seconds: 15);
    return new Timer(_duration, navigationPage);
  }

//  void navigationPage() {
//    Navigator.of(context).pushReplacementNamed('/HomeScreen');
//  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    isSignedIn();
  }

  //checks if user is signed in
  void isSignedIn() async {
    //set loading to true
    this.setState(() {
      isLoading = true;
    });

    prefs = await SharedPreferences.getInstance();
    print(await FirebaseAuth.instance.currentUser());

    // if user currently signed in go to Home screen
    if (await FirebaseAuth.instance.currentUser() != null) {
      isLoggedIn = true;
    }
    // if user isnt signed in go to Sign In
    else {
      isLoggedIn = false;
    }
    this.setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: <Widget>[
        SplashScreen(
            seconds: 4,
            navigateAfterSeconds: isLoggedIn ? HomeScreen() : SignIn(),
//        title: new Text('Connecting you to \nLocal \nOrganic Produce', style: TextStyle(color:Color.fromRGBO(128, 66, 0, 1.0), fontSize: 20 ,),),
//        image: new Image.asset('assets/1.jpg'),
            backgroundColor: Utilities().lighBrown,
            styleTextUnderTheLoader: new TextStyle(),
            photoSize: 100.0,
            loaderColor: Color.fromRGBO(128, 66, 0, 1.0)),
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 50,
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                "OrgConnect",
                style: TextStyle(
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Connecting you to\nLocally\nOrganic Produce",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color.fromRGBO(128, 66, 0, 1.0)),
              ),
            ],
          ),
        )
      ],
    )));
  }
}
