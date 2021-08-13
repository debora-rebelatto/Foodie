import 'package:flutter/material.dart';
import 'package:foodie/Templates/History/History.dart';
import 'package:foodie/Templates/Profile/Profile.dart';
import 'package:foodie/core/AppColors.dart';

class BottomBarHome extends StatefulWidget {
  const BottomBarHome({ Key? key }) : super(key: key);

  @override
  _BottomBarHomeState createState() => _BottomBarHomeState();
}

class _BottomBarHomeState extends State<BottomBarHome> {
  List icons = [
    Icons.home,
    Icons.favorite_border_outlined,
    Icons.person,
    Icons.history
  ];

  var selectedTab = 0;

  void changeTab(tab) {
    setState(() {
      selectedTab = tab;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 60,
      // padding: EdgeInsets.all(25),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                changeTab(0);
                // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              icon: Icon(icons[0], color: selectedTab == 0 ? AppColors.orange : Colors.grey[500] ,),
            ),
            IconButton(
              onPressed: () {
                changeTab(1);
                // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              icon: Icon(icons[1], color: selectedTab == 1 ? AppColors.orange : Colors.grey[500] ,),
            ),
            IconButton(
              onPressed: () {
                changeTab(2);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
              },
              icon: Icon(icons[2], color: selectedTab == 2 ? AppColors.orange : Colors.grey[500] ,),
            ),
            IconButton(
              onPressed: () {
                changeTab(3);
                Navigator.push(context, MaterialPageRoute(builder: (context) => History()));
              },
              icon: Icon(icons[3], color: selectedTab == 3 ? AppColors.orange : Colors.grey[500] ,)
            ),
          ],
        ),
      ),
    );
  }
}
