import 'package:flutter/material.dart';
import 'package:foodie/Templates/Cart/Cart.dart';
import 'package:foodie/Templates/HomePage/HomePage.dart';
import 'package:foodie/Templates/Drawer/LeftDrawer.dart';
// import 'package:foodie/Templates/SearchResults.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({ Key? key }) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {

  // final List<Widget> _telas = [
  //   HomePage(),
  //   Cart(),
  //   SearchResults('assdasd')
  // ];

  int selectedScreen = 0;

  void onTabTapped(int index) {
    setState(() {
      selectedScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Cart()));
            },
          ),
        ],
      ),
      drawer: LeftDrawer(),
      body: Container(child: HomePage(),),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: selectedScreen,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Minha conta"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket),
              label: "Meus pedidos"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favoritos"
          ),
        ],
      ),
    );
  }
}

