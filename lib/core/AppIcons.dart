import 'package:flutter/material.dart';
import 'package:foodie/core/AppColors.dart';

class AppIcons {
  static final creditCard = Container(
    decoration: BoxDecoration(
      color: AppColors.orange,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: EdgeInsets.all(5),
      child: Icon(Icons.credit_card, color: Colors.white,),
    ),
  );

  static final bank = Container(
    decoration: BoxDecoration(
      color: AppColors.pink,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: EdgeInsets.all(5),
      child: Icon(Icons.food_bank, color: Colors.white,),
    ),
  );
}