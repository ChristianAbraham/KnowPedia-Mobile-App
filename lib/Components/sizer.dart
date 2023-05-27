import 'package:flutter/material.dart';

class Sizer extends StatelessWidget {
  Sizer({super.key});
  late double screenHeight;
  late double screenWidth;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return const Placeholder();
  }
}
