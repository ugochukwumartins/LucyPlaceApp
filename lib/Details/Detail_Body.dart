import 'package:flutter/material.dart';
import 'package:lucys_place_app/Models/Products_Facinator.dart';

import 'Buy_now_Button.dart';
import 'CartCounter_state.dart';
import 'Color_Size.dart';
import 'Color_doctor.dart';
import 'Counter_With_Favorate.dart';
import 'Description.dart';
import 'Image_Details_with_text.dart';

class DetailBody extends StatelessWidget {
  final Facinator product;

  const DetailBody({this.product, Key key}) : super(key: key);
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
                      ClolorSize(product: product),
                      Decription(product: product),
                      CounterWithFavourate(),
                      Buy_now(product: product)
                    ],
                  ),
                ),
                ImageWithText(
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
