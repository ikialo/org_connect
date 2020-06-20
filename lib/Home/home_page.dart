import 'package:flutter/material.dart';
import 'package:orgconnect/Home/home_body.dart';
import 'package:orgconnect/ProviderClass/provider_class.dart';
import 'package:provider/provider.dart';

import '../Cart/cart_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var bloc = Provider.of<CartBloc>(context);
    int totalCount = 0;
    if (bloc.cart.length > 0) {
      totalCount = bloc.cart.values.reduce((a, b) => a + b);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop"),
        actions: <Widget>[
          new Padding(
            padding: const EdgeInsets.all(10.0),
            child: new Container(
                height: 150.0,
                width: 30.0,
                child: new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartPage(),
                      ),
                    );
                  },
                  child: new Stack(
                    children: <Widget>[
                      new IconButton(

                        icon: new Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                        onPressed: null,
                      ),
                      new Positioned(
                          child: new Stack(
                            children: <Widget>[
                              new Icon(Icons.brightness_1,
                                  size: 22.0, color: Colors.red[700]),
                              new Positioned(
                                  top: 3.0,
                                  right: 7,
                                  child: new Center(
                                    child: new Text(
                                      '$totalCount',
                                      style: new TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w500),
                                      key: Key("count"),

                                    ),
                                  )),
                            ],
                          )),
                    ],
                  ),
                )),
          )
        ],
      ),
      body: HomeBody()
    );
  }
}
