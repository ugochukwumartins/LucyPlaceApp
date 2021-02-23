import 'package:flutter/material.dart';

AppBar Appbarbuilder() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.arrow_back),
      color: Colors.black,
      onPressed: () {},
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
      )
    ],
  );
}
