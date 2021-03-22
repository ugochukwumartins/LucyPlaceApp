import 'package:flutter/material.dart';
import 'package:lucys_place_app/Models/Food_section.dart';

class FoodDecription extends StatelessWidget {
  const FoodDecription({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Food product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(product.description),
    );
  }
}
