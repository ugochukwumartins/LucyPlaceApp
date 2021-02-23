import 'package:flutter/material.dart';
import 'package:lucys_place_app/Models/Products_Facinator.dart';

class Decription extends StatelessWidget {
  const Decription({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Facinator product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(product.description),
    );
  }
}
