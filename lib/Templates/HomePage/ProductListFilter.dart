import 'package:flutter/material.dart';
import 'package:foodie/core/AppColors.dart';

class ProductListFilter extends StatefulWidget {
  const ProductListFilter({ Key? key }) : super(key: key);

  @override
  _ProductListFilterState createState() => _ProductListFilterState();
}

class _ProductListFilterState extends State<ProductListFilter> {
  int selectedTab = 0;
  List typesOfFood = ['Foods', 'Drinks', 'Snacks', 'Sauce'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 60,
        child: Row(
          children: [
            Container(width: MediaQuery.of(context).size.width * 0.3,),
            ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: typesOfFood.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(10),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        selectedTab = index;
                      });
                    },
                    child: Column(
                      children: [
                        Text(typesOfFood[index],
                          style: TextStyle(
                            color: selectedTab == index
                              ? AppColors.orange : Colors.black
                          ),
                        ),

                        SizedBox(height: 5,),

                        selectedTab == index
                          ? Container(
                            height: 2,
                            width: 30,
                            color: AppColors.orange,
                          ) : SizedBox(width: 0,)
                      ],
                    )
                  ),
                );
              }
            ),
            Container(width: MediaQuery.of(context).size.width * 0.3,),
          ]
        )
      )
    );
  }
}