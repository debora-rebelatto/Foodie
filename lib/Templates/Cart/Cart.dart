import 'package:flutter/material.dart';
import 'package:foodie/Templates/Checkout/Checkout.dart';
import 'package:foodie/core/AppButtons.dart';
import 'package:foodie/core/AppColors.dart';

class Cart extends StatefulWidget {
  const Cart({ Key? key }) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  List items = ['Veggie tomato mix', 'Egg and cucumber', 'Spicy fish sauce'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text('Cart', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/swipe.png'),
                    SizedBox(width: 10),
                    Text('swipe on an item to delete')
                  ],
                ),

                SizedBox(height: 10,),

                ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 120,
                        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: Offset(5, 2),
                            ),
                          ]
                        ),
                        child: Row(children: [
                          Column(children: [
                            Image.asset('assets/list/$index.png', height: 80,)

                          ],),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(items[index], style: TextStyle(fontWeight: FontWeight.bold)),

                                SizedBox(height: 10,),

                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('20', style: TextStyle(color: AppColors.orange, fontWeight: FontWeight.bold),),
                                    SizedBox(width: 50,),
                                    Container(
                                      height: 30,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: AppColors.orange,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(' - ', style: TextStyle(color: Colors.white)),
                                          Text(' 1 ', style: TextStyle(color: Colors.white)),
                                          Text(' + ', style: TextStyle(color: Colors.white))
                                        ],
                                      ),
                                    )

                                  ],
                                )

                              ],
                            ),
                          )

                        ],),
                      ),
                    );
                  }
                )

              ]
            )
          )
        ),

        bottomNavigationBar: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Checkout()));
                },
                style: AppButtons.orangeButtons,
                child: Text('Complete', style: TextStyle(color: Colors.white),)
              )
            ],
          ),
        ),

      ),
    );
  }
}
