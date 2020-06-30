import 'package:flutter/material.dart';
import 'package:orgconnect/Home/home_body.dart';
import 'package:orgconnect/Util.dart';

class BottomTabMain extends StatefulWidget {
  @override
  _BottomTabMainState createState() => _BottomTabMainState();
}

class _BottomTabMainState extends State<BottomTabMain> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeBody(),
    Text("Search"),
    Text("Bilum"),
    Text("Profile"),
    Text("Orders"),


  ];
  final List<String> _tabs = ["HOME", "SEARCH", "BILUM", "PROFILE", "ORDERS"
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        drawer: Drawer(),
        appBar: AppBar(

          centerTitle: true,
          title:  Text(_tabs[_currentIndex], textAlign: TextAlign.center,)),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped, // new
          currentIndex: _currentIndex, // new
          backgroundColor: Utilities().whiteBrown,
          fixedColor: Utilities().darkBrown,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Home'),

            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.search),
              title: new Text('Search'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                title: Text('Bilum')
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.person),
              title: new Text('Profile'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.list),
                title: Text('Order')
            )
          ],
        ),
      ),
    );
  }
}
