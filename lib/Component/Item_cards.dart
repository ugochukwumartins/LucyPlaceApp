import 'package:flutter/material.dart';
import 'package:lucys_place_app/Models/Products_Facinator.dart';

class itemCard extends StatelessWidget {
  final Facinator products;
  final Function press;
  const itemCard({
    this.products,
    this.press,
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: products.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: products.id,
                child: Image.asset(products.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20 / 4),
            child: Text(
              products.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "\#${products.price}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
