import 'package:flutter/material.dart';
import 'package:foodie/Templates/Checkout/Payment.dart';
import 'package:foodie/core/AppButtons.dart';
import 'package:foodie/core/AppColors.dart';
import 'package:foodie/core/AppText.dart';

class Checkout extends StatefulWidget {
  const Checkout({ Key? key }) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Checkout", style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Delivery", style: AppText.title),

            SizedBox(height: 20),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Checkout', style: TextStyle(fontWeight: FontWeight.bold,)),
                  Text('Change', style: TextStyle(color: AppColors.orange))
                ],
              ),
            ),

            SizedBox(height: 10),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Name'),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Divider()
                  ),
                  Text('Address'),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Divider()
                  ),
                  Text('Number')

                ],
              ),
            ),

            SizedBox(height: 20),

            Text('Delivery method', style: TextStyle(fontWeight: FontWeight.bold,)),

            SizedBox(height: 10),

            Container(
              padding: EdgeInsets.all(15),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Column(children: [
                Text('Delivery'),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Divider()
                ),
                Text('Pickup'),
              ],),
            ),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total', style: TextStyle(fontWeight: FontWeight.bold)),
                Text("R\$ 20")
              ],
            )
          ],
        ),
      ),

      bottomNavigationBar: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Payment()));
                },
                style: AppButtons.orangeButtons,
                child: Text('Proceed to payment', style: TextStyle(color: Colors.white),)
              )
            ],
          ),
        ),
    );
  }
}