import 'package:flutter/material.dart';
import 'package:lucys_place_app/Component/appbarBuilder.dart';
import 'package:lucys_place_app/Models/Products_Facinator.dart';
import 'package:lucys_place_app/Details/Detail_Body.dart';

class detailScreen extends StatelessWidget {
  final Facinator product;

  const detailScreen({this.product, Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: DetaiAppbar(context),
      body: DetailBody(
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
