import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({ Key? key }) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text('History', style: TextStyle(color: Colors.black),),
        ),
        body: Container(
          padding: EdgeInsets.all(25),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/Vector.png'),
                SizedBox(height: 20,),
                Text('No history yet', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                SizedBox(height: 10,),
                Text('Hit the orange button down below to create an order',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}