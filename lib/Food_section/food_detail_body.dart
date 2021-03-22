import 'package:flutter/material.dart';
import 'package:lucys_place_app/Models/Food_section.dart';
import 'package:lucys_place_app/Food_section/FoodColor_Size.dart';
import 'package:lucys_place_app/Food_section/FoodDescription.dart';
import 'package:lucys_place_app/Food_section/FoodCounter_With_Favorate.dart';
import 'package:lucys_place_app/Food_section/FoodBuy_now_Button.dart';
import 'package:lucys_place_app/Food_section/FoodImage_Details_with_text.dart';

class FoodDetailBody extends StatelessWidget {
  final Food product;

  const FoodDetailBody({this.product, Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12, left: 20, right: 20),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FoodClolorSize(product: product),
                      FoodDecription(product: product),
                      FoodCounterWithFavourate(),
                      FoodBuynow(product: product)
                    ],
                  ),
                ),
                FoodImageWithText(
                  product: product,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
