import 'package:flutter/material.dart';
import 'package:lucys_place_app/Details/CartCounter_state.dart';

class FoodCounterWithFavourate extends StatelessWidget {
  const FoodCounterWithFavourate({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
          padding: EdgeInsets.all(2),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.favorite,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
