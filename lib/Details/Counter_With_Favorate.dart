import 'package:flutter/material.dart';

import 'CartCounter_state.dart';

class CounterWithFavourate extends StatelessWidget {
  const CounterWithFavourate({
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
