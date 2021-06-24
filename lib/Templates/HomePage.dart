import 'package:flutter/material.dart';
import 'package:foodie/Templates/Cart.dart';
import 'package:foodie/Templates/LeftDrawer.dart';

import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedTab = 0;

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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),

              Text("DISCOVER!", style: GoogleFonts.varelaRound(fontSize: 30, fontWeight: FontWeight.bold)),
              Text("DISCOVER!", style: GoogleFonts.varelaRound(fontSize: 30, fontWeight: FontWeight.bold)),

              SizedBox(height: 30),

              TextField( decoration: decoration('Search') ),

              SizedBox(height: 30),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 50,
                  child: Row(
                    children: [
                      Container(width: MediaQuery.of(context).size.width * 0.3,),
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 20,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.all(10),
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  selectedTab = index;
                                });
                              },
                              child: Text('sakldjsad',
                                style: TextStyle(
                                  color: selectedTab == index
                                    ? Colors.amber : Colors.black),
                              )
                            ),
                          );
                        }
                      ),
                    ]
                  )
                )
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 400,
                  child: Row(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Container(
                                constraints: BoxConstraints(maxWidth: 200, minHeight: 250),
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Card(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all( Radius.circular(20) )),
                                    elevation: 10,
                                    child: Material(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all( Radius.circular(30) )),
                                      child: Stack(children: [ ])
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Container(
                                    //height: 50, width: 50,
                                    //color: Color(0xff14213d),
                                    child: Center(
                                      child: Image.asset('assets/list/$index.png', height: 150, width: 150,)
                                    ),
                                  )
                                )
                              )
                            ],
                          );
                        }
                      )
                    ],
                  ),
                ),
              ),
            ]
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50,
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
