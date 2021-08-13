import 'package:flutter/material.dart';
import 'package:foodie/core/AppImages.dart';
import 'package:foodie/Templates/LoginSignupPage/Login.dart';

class HelloPage extends StatelessWidget {
  const HelloPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [

            Image.asset(AppImages.foodForEveryone,
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
      
      
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 40),
              child: Text('Food for Everyone',
                style: TextStyle(
                  fontFamily: 'SF-Pro-Rounded-Heavy',
                  color: Colors.white,
                  fontSize: 50
                ),
              ),
            ),
      
            Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(
                style: TextButton.styleFrom(
                  // padding: EdgeInsets.all(15),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20), ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text('Get Started', style: TextStyle(color: Colors.black),)
              ),
            ),
          ],
        ),
      ),
    );
  }
}