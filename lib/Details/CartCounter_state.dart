import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int ItemNum = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildSizedBoxs(
          icons: Icons.remove,
          press: () {
            if (ItemNum > 1) {
              setState(() {
                ItemNum--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            ItemNum.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildSizedBoxs(
          icons: Icons.add,
          press: () {
            setState(() {
              ItemNum++;
            });
          },
        ),
      ],
    );
  }

  SizedBox buildSizedBoxs({IconData icons, Function press}) {
    return SizedBox(
      height: 32,
      width: 40,
      child: OutlineButton(
        padding: EdgeInsets.only(right: 4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        onPressed: press,
        child: Icon(icons),
      ),
    );
  }
}
