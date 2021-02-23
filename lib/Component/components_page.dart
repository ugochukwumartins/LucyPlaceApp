import 'package:flutter/material.dart';
import 'package:lucys_place_app/Component/Categories.dart';
import 'package:lucys_place_app/Component/Item_cards.dart';
import 'package:lucys_place_app/Details/Detail_Screen_page.dart';
import 'package:lucys_place_app/Food_section/Food_ONLY.dart';
import 'package:lucys_place_app/Food_section/ViewSwitcher.dart';
import 'package:lucys_place_app/Models/Products_Facinator.dart';

class Body extends StatelessWidget {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'LUCYSPLACE',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Categories(
              // selectedItem: selectedItem,
              ),
          // NewWidget(
          //   select: selectedItem,
          // ),
        ],
      ),
    );
  }
}

class NewWidget extends StatefulWidget {
  final int select;
  const NewWidget({Key key, this.select}) : super(key: key);
  @override
  _NewWidgetState createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  @override
  Widget build(BuildContext context) {
    return ShowViews();
  }

  Widget ShowViews() {
    if (widget.select == 0) {
      print(widget.select);
      return buildExpanded();
    } else if (widget.select == 1) {
      print(widget.select);
      return Food();
    }
  }

  Expanded buildExpanded() {
    return Expanded(
      child: Padding(
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
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NewWidgets extends StatelessWidget {
  const NewWidgets({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
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
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
