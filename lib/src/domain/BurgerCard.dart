import 'package:flutter/material.dart';

class BurgerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 400,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/details/cut_card.png'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
