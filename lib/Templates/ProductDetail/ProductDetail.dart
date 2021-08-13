import 'package:flutter/material.dart';
import 'package:foodie/core/AppButtons.dart';
import 'package:foodie/core/AppText.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({ Key? key }) : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  bool isFavorite = false;
  bool isOnCart = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(5, 20, 5, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Icon(Icons.arrow_back_ios),
                      ),
                      Container(
                        child: IconButton(
                          onPressed: () { setState(() { isFavorite = !isFavorite; }); },
                          padding: EdgeInsets.zero,
                          icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border_outlined),
                        )
                      ),
                    ],
                  ),
                ),

                Center(child: Image.asset('assets/list/1.png')),

                SizedBox(height: 20,),

                Center(child: Text("Veggie tomato mix", style: AppText.title)),

                SizedBox(height: 20,),

                Center(child: Text("200", style: AppText.titleOrange,)),

                SizedBox(height: 20,),

                Text("Delivery info", style: AppText.title),
                SizedBox(height: 5,),
                Text("Delivered between monday aug and thursday 20 from 8pm to 91:32 pm", style: TextStyle(fontSize: 15),),

                SizedBox(height: 25,),

                Text("Return policy", style: AppText.title),
                SizedBox(height: 5,),
                Text("All our foods are double checked before leaving our stores "
                  + "so by any case you found a broken food please contact our hotline immediately.",
                  style: TextStyle(fontSize: 15),
                ),

                SizedBox(height: 25,),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: TextButton(
                      style: AppButtons.orangeButtons,
                      onPressed: (){ setState(() { isOnCart = true; }); },
                      child: Text(isOnCart ? 'Already on Cart' : 'Add To Cart', style: TextStyle(color: Colors.white),)
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}