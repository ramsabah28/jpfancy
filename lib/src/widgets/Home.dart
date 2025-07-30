import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("lib/assets/hintergruende/bg_mainscreen.png"),
          fit: BoxFit.cover),
        ),
      ),

    );
  }
}
