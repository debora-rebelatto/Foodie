import 'package:flutter/material.dart';
import 'package:foodie/Templates/LoginSignupPage/LoginForm.dart';
import 'package:foodie/Templates/LoginSignupPage/SignupForm.dart';
import 'package:foodie/core/AppColors.dart';


class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.white,
                height: 150,
                child: Center(
                  child: Image.asset('assets/SplashScreen/iconNative.png',
                    height: 100,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                ),
      
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    )
                  ),
      
                  child: TabBar(
                    controller: _tabController,
                    indicatorColor: AppColors.orange,
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.black,
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    tabs: [
                      Tab( text: 'Login', ),
                      Tab( text: 'Signup',)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    LoginForm(),
                    SignupForm()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}