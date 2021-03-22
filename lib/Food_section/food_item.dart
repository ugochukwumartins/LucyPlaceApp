import 'package:flutter/material.dart';

import 'package:lucys_place_app/Models/Food_section.dart';

class foodItem extends StatelessWidget {
  final Food products;
  final Function press;

  const foodItem({
    Key key,
    this.products,
    this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: ListTile(
          title: Text(products.title),
          subtitle: Text(products.price.toString()),
          leading: Container(
              width: 100,
              child: Image.asset(
                products.image,
                fit: BoxFit.fitWidth,
              ))),
    );
  }
}
