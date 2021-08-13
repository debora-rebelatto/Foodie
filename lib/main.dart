import 'package:flutter/material.dart';
import 'package:foodie/Templates/HelloPage.dart';
import 'package:foodie/provider/LoginData.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginData()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffF2F2F2),
        fontFamily: 'SFProText-Regular'
      ),
      home: HelloPage(),
    );
  }
}
