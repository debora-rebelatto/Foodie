import 'package:flutter/material.dart';
import 'package:foodie/Templates/ProductDetail/ProductDetail.dart';
import 'package:foodie/core/AppColors.dart';

class HorizontalProductList extends StatefulWidget {
  const HorizontalProductList({ Key? key }) : super(key: key);

  @override
  _HorizontalProductListState createState() => _HorizontalProductListState();
}

class _HorizontalProductListState extends State<HorizontalProductList> {

  List items = ['Veggie tomato mix', 'Egg and cucumber', 'Spicy fish sauce'];
  // 'Fried chicken m.'
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Container(
          height: 400,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Material(
                    color: Color(0xffF2F2F2),
                    child: Ink(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetail()));
                        },
                        child: Container(
                          height: 210,
                          width: 210,
                          padding: EdgeInsets.all(10),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 80,
                                child: Container(
                                  width: 180,
                                  height: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 10,
                                        offset: Offset(5, 2),
                                      ),
                                    ]
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 80,),
                                      Text(items[index], style: TextStyle(fontWeight: FontWeight.bold),),
                                      SizedBox(height: 10,),
                                      Text('R\$ 20', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.orange),),
                                      SizedBox(height: 10,),
                                    ],
                                  )
                                ),
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.asset('assets/list/$index.png', height: 150, width: 150,),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}