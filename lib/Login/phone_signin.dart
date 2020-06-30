import 'package:flutter/material.dart';
import 'package:orgconnect/BottomTabMain/bottom_tab_main.dart';

import '../Util.dart';

class PhoneSignIn extends StatefulWidget {
  @override
  _PhoneState createState() => _PhoneState();
}

class _PhoneState extends State<PhoneSignIn> {

  TextEditingController tecPhNum = new TextEditingController();
  bool isPhoneNumber = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Utilities().whiteBrown,
        body: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "OrgConnect",
                  style: TextStyle(
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 80),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Phone Sign In",
                  style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 120),
              child: Align(
                alignment: Alignment.topCenter,
                child: Hero(
                    tag: "icon",
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 40,
                    )),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 12),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Connecting you to\nLocally\nOrganic Produce",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color.fromRGBO(128, 66, 0, 1.0)),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  height: isPhoneNumber?500 : 300,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 10,
                    color: Utilities().lighBrown,
                    margin: EdgeInsets.only(top: 120),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.white),
                              child: TextField(
                                controller: tecPhNum,
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    contentPadding: EdgeInsets.fromLTRB(
                                        20.0, 15.0, 20.0, 15.0),
                                    hintText: "Phone Number",
                                    hintStyle:
                                        (TextStyle(color: Utilities().darkBrown)),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0))),
                                keyboardType: TextInputType.number,
                                maxLength: 8,
                              ),
                              width: 200,
                            ),
                            IconButton(
                              icon: Icon(Icons.check),
                              onPressed: () {
                                if (tecPhNum.text.length == 8){

                                  setState(() {
                                    isPhoneNumber = true;
                                  });
                                }
                                else{
                                  setState(() {
                                    isPhoneNumber = false;
                                  });
                                }
                              },
                              color: Utilities().darkBrown,
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                        SizedBox(
                          height: 25,
                        ),

                        isPhoneNumber?Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                          Text(
                            "After entering your phone number and \nclicking the check Icon a verification \ncode will be sent to your phone.\nEnter Verification Code and Click Submit",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Utilities().darkBrown),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.white),
                            child: TextField(
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  contentPadding:
                                  EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                  hintText: "Code",
                                  hintStyle:
                                  (TextStyle(color: Utilities().darkBrown)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0))),
                            ),
                            width: 200,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Material(

                            elevation: 20.0,
                            borderRadius: BorderRadius.circular(30.0),
                            color: Utilities().darkBrown,
                            child: MaterialButton(
                              minWidth: 200,
                              padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return BottomTabMain();
                                }));
                              },
                              child: Text("Submit",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: "HANDGOTN")), enableFeedback: false, disabledColor: Utilities().whiteBrown,
                            ),
                          )
                        ],):Container()


                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
