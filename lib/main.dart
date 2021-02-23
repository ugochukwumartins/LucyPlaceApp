import 'package:flutter/material.dart';
import 'fasinator_image_page.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LucysPlace',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FasinatorPage(),
    ),
  );
}
