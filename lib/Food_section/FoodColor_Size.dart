import 'package:flutter/material.dart';
import 'package:lucys_place_app/Details/Color_doctor.dart';
import 'package:lucys_place_app/Models/Food_section.dart';

class FoodClolorSize extends StatelessWidget {
  const FoodClolorSize({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Food product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Colors",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: <Widget>[
                  Colordoctor(
                    colors: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  Colordoctor(colors: Color(0xFF486C25)),
                  Colordoctor(colors: Color(0xFF356C35)),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                text: "Size\n",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.red,
                ),
              ),
              TextSpan(
                text: "${product.size} CM",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.red,
                ),
              )
            ]),
          ),
        )
      ],
    );
  }
}
