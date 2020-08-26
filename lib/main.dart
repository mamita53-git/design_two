import 'package:design_two/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(Singup());

class Singup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Singup",
      home: MyhomePage(),
    );
  }
}
