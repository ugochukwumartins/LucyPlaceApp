import 'package:flutter/material.dart';
import 'package:lucys_place_app/Component/Item_cards.dart';
import 'package:lucys_place_app/Details/Detail_Screen_page.dart';
import 'package:lucys_place_app/Models/Products_Facinator.dart';

import 'Food_ONLY.dart';

class ShowSwitch extends StatefulWidget {
  final int selectItem;

  const ShowSwitch({Key key, this.selectItem}) : super(key: key);
  @override
  _ShowSwitchState createState() => _ShowSwitchState();
}

class _ShowSwitchState extends State<ShowSwitch> {
  @override
  Widget build(BuildContext context) {
    return ShowViews();
  }

  Widget ShowViews() {
    if (widget.selectItem == 0) {
      print(widget.selectItem);
      return ReturnItemCard();
    } else if (widget.selectItem == 1) {
      print(widget.selectItem);
      return Food();
    }
  }

  Padding ReturnItemCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        itemCount: Products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          crossAxisCount: 2,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) => itemCard(
          products: Products[index],
          press: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => detailScreen(
                      product: Products[index],
                    )),
          ),
        ),
      ),
    );
  }
}
