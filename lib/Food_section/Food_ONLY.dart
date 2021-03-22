import 'package:flutter/material.dart';
import 'package:lucys_place_app/Details/Detail_Screen_page.dart';
import 'package:lucys_place_app/Models/Food_section.dart';

import 'food_details.dart';
import 'food_item.dart';

class Food extends StatelessWidget {
  const Food({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          itemCount: Foods.length,
          itemBuilder: (context, index) => foodItem(
            products: Foods[index],
            press: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FoodDetails(
                  product: Foods[index],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
