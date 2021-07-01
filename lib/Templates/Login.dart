import 'package:flutter/material.dart';
import 'package:foodie/Templates/Home.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car, color: Colors.black,)),
                Tab(icon: Icon(Icons.directions_transit, color: Colors.black)),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              Form(child: Column(children: [
                TextFormField(),
                TextFormField(),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Text('Login')
                )

              ],)),
              Form(child: Column(children: [
              Text('signupform'),
              TextFormField()

              ],))
            ],
          ),
        ),
      ),

    );
  }
}
