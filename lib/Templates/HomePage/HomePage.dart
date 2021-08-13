import 'package:flutter/material.dart';
import 'package:foodie/Templates/Cart/Cart.dart';
import 'package:foodie/Templates/HomePage/BottomBarHome.dart';
import 'package:foodie/Templates/HomePage/HorizontalProductList.dart';
import 'package:foodie/Templates/HomePage/ProductListFilter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var setTab = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(25, 40, 25, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Image.asset('assets/icons/Menu.png'),
                      ),
                      Ink(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
                          },
                          child: Container(
                            child: Image.asset('assets/icons/shopping-cart.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("DISCOVER", style: GoogleFonts.varelaRound(fontSize: 30, fontWeight: FontWeight.bold)),
                      Text("FOOD NEAR YOU!", style: GoogleFonts.varelaRound(fontSize: 30, fontWeight: FontWeight.bold)),

                    ],
                  )
                ),

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField( decoration: decoration('Search') ),
                ),
                ProductListFilter(),
                HorizontalProductList()
              ]
            ),
          ),
        ),
        bottomNavigationBar: BottomBarHome()
      ),
    );
  }

  decoration(hint) {
    return InputDecoration(
      prefixIcon: Icon(Icons.search, color: Colors.black),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: BorderSide(color: Colors.transparent, width: 0.0),
      ),
      focusedBorder:OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
        borderRadius: BorderRadius.circular(20.0),
      ),
      border: new OutlineInputBorder( borderRadius: new BorderRadius.circular(20.0)),
      contentPadding: EdgeInsets.fromLTRB(30, 20, 10, 20),
      hintText: hint,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      filled: true,
      fillColor: Color(0xffEFEEEE)
    );
  }
}