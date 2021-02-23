import 'package:flutter/material.dart';

import 'components_page.dart';

class Categories extends StatefulWidget {
  List<String> categories = ["Facinators", "Foods", "Others"];
  int selectedItem = 0;

  // Categories({Key key, this.selectedItem}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: SizedBox(
            height: 25,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.categories.length,
                itemBuilder: (context, index) => Textcategories(index)),
          ),
        ),
        Container(
          height: 500,
          child: NewWidget(
            select: widget.selectedItem,
          ),
        ),
      ],
    );
  }

  Widget Textcategories(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.selectedItem = index;
          print(index);
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              widget.categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: widget.selectedItem == index
                    ? Colors.black
                    : Colors.black12,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10 / 4),
              height: 2,
              width: 30,
              color: widget.selectedItem == index
                  ? Colors.black
                  : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
