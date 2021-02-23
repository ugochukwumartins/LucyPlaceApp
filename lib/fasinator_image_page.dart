import 'package:flutter/material.dart';
import 'package:lucys_place_app/Component/components_page.dart';
import 'package:lucys_place_app/Component/appbarBuilder.dart';

class FasinatorPage extends StatelessWidget {
  void _itemtapped() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: Appbarbuilder(),
      body: Body(),
    );
  }
}
