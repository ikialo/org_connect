import 'package:flutter/material.dart';
import 'package:orgconnect/ProviderClass/provider_class.dart';
import 'package:orgconnect/Util.dart';
import 'package:provider/provider.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {

    var bloc = Provider.of<CartBloc>(context);
    int totalCount = 0;
    if (bloc.cart.length > 0) {
      totalCount = bloc.cart.values.reduce((a, b) => a + b);
    }

//    return GridView.count(
//      crossAxisCount: 2,
//      children: List.generate(6, (index) {
//        return GestureDetector(
//
//            onTap: () {
//              bloc.addToCart(index);
//            },
//            child: Container(
//              height: 200,
//              width: 200,
//              decoration: BoxDecoration(
//                image: DecorationImage(
//                  image: AssetImage("assets/${index + 1}.jpg"),
//                  fit: BoxFit.fitWidth,
//                ),
//                borderRadius: BorderRadius.circular(12),
//              ),
//            ));
//      }),
//    );
    List<String> items = [
      "fluttermaster.com",
      "Update Android Studio to 3.3",
      "Implement ListView widget",
      "Demo ListView simplenote app",
      "Fixing app color",
      "Create new note screen",
      "Persist notes data",

    ];

    return


      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, pos) {
          return Padding(
              padding: EdgeInsets.only(bottom: 8.0,),
              child: Container(
                height: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                    gradient: LinearGradient(

                        colors: [Utilities().lighBrown, Utilities().whiteBrown],begin: Alignment.topCenter, end: Alignment.bottomCenter),),
                child: Padding(
                  padding: EdgeInsets.all(2),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(items[pos], textAlign: TextAlign.left, style: TextStyle(
                        color: Utilities().darkBrown,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,)),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Stack(children: <Widget>[
                            Align(
                                alignment: Alignment.center,

                                child: Image.asset("assets/"+pos.toString()+".jpg",height: 100,  width: 100,)),
                            Align(
                              alignment: Alignment.bottomRight,
                                child: Text("K5"))
                          ],),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[


                          Row(
                            children: <Widget>[
                              Text("Qty: "),
                              Container(
                                height: 30,
                                color: Utilities().whiteBrown,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,), width: 30,),
                            ],
                          ),
                          SizedBox(height: 8,),
                          Container(
                            height: 30,
                            child: Material(
                              elevation: 20.0,
                              borderRadius: BorderRadius.circular(30.0),
                              color: Utilities().darkBrown,
                              child: MaterialButton(
                                minWidth: 150,
                                padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                               onPressed: () {

                                },
                                child: Text("Add to Bilum",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontFamily: "HANDGOTN")), enableFeedback: false, disabledColor: Utilities().whiteBrown,
                              ),
                            ),
                          )
                        ],)
                      ],)

                    ],
                  ),
//                child:
                ),
              )
          );
        },
    ),
      );
  }
}
