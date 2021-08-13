/* import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:foodie/Templates/Login.dart';

import 'HelloPage.dart';

class App extends StatefulWidget {
  // Create the initialization Future outside of `build`:
  @override
  _AppState createState() => _AppState();
}
class _AppState extends State<App> {
  /// The future is part of the state of our widget. We should not call `initializeApp`
  /// directly inside [build].
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          print(snapshot.error);
          return Icon(Icons.warning);
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return HelloPage();
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return CircularProgressIndicator();
      },
    );
  }
} */