import 'package:flutter/material.dart';
import 'package:foodie/core/AppIcons.dart';
import 'package:foodie/core/AppText.dart';

class Payment extends StatefulWidget {
  const Payment({ Key? key }) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Checkout', style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Payment", style: AppText.title),

            SizedBox(height: 15,),

            Text('Payment Method', style: AppText.subtitle,),

            SizedBox(height: 15,),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    children: [
                      AppIcons.creditCard,
                      SizedBox(width: 10,),
                      Text('Credit Card')
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Divider()
                  ),

                  Row(
                    children: [
                      AppIcons.bank,
                      SizedBox(width: 10,),
                      Text('Bank Account')
                    ],
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}