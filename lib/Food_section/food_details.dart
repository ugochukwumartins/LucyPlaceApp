import 'package:flutter/material.dart';

import 'package:lucys_place_app/Models/Food_section.dart';

import 'package:lucys_place_app/Food_section/food_detail_body.dart';

class FoodDetails extends StatelessWidget {
  final Food product;

  const FoodDetails({this.product, Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: DetaiAppbar(context),
      body: FoodDetailBody(
        product: product,
      ),
    );
  }

  AppBar DetaiAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: Colors.white,
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          color: Colors.black,
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.add_shopping_cart),
          color: Colors.black,
          onPressed: () {},
        ),
        SizedBox(
          width: 20.0,
        ),
      ],
    );
  }
}
