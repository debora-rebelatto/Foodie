import 'package:flutter/material.dart';
import 'package:foodie/Templates/HomePage/HomePage.dart';
import 'package:foodie/core/AppButtons.dart';
import 'package:foodie/core/AppColors.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({ Key? key }) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.topCenter,
      color: Colors.grey[100],
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.black),
              ),
              keyboardType: TextInputType.emailAddress,
            ),

            TextFormField(
              decoration: InputDecoration(
                labelText: 'Senha',
                labelStyle: TextStyle(color: Colors.black),
              ),
              obscureText: _obscureText,
            ),

            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Text('Forgot Password?',
                style: TextStyle(
                  color: AppColors.orange,
                  fontWeight: FontWeight.bold
                ),
              )
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(
                style: AppButtons.orangeButtons,
                child: Text('Login', style: TextStyle(color: Colors.white),),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => HomePage())
                  );
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}













