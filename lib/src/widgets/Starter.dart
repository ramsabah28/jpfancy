import 'package:flutter/material.dart';

class Starter extends StatelessWidget {
  @override
  Widget build(BuildContext con) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/hintergruende/bg_startscreen.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 20,
            top: 250,
            child: Stack(
              children: <Widget>[
                Image.asset('lib/assets/grafiken/cupcake_chick.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
