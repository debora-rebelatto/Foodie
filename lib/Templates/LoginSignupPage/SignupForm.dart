import 'package:flutter/material.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({ Key? key }) : super(key: key);

  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Form(
        child: Column(
          children: [
            Text('signupform'),
            TextFormField()

          ],
        )
      )
    );
  }
}