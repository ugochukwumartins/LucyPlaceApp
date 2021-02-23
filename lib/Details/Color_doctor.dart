import 'package:flutter/material.dart';
import 'package:lucys_place_app/Models/Products_Facinator.dart';

class Colordoctor extends StatelessWidget {
  final Color colors;
  final bool isSelected;
  const Colordoctor({
    this.colors,
    this.isSelected = false,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20 / 4,
        right: 20 / 2,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? colors : Colors.transparent,
        ),
        shape: BoxShape.circle,
        // color: product.color,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: colors,
        ),
      ),
    );
  }
}
