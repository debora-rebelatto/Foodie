import 'package:flutter/material.dart';

class LoginData extends ChangeNotifier {
  String condicaoId = '';

  String get getCondicaoId => condicaoId;

  void setCartId(String id) {
    condicaoId = id;
    notifyListeners();
  }
}