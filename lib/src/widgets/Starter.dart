import 'dart:ui';
import 'package:flutter/material.dart';

class Starter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/hintergruende/bg_startscreen.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          clipBehavior: Clip.none, // <== Allow children to overflow
          children: <Widget>[
            Positioned(
              left: 20,
              top: 250,
              child: Image.asset('lib/assets/grafiken/cupcake_chick.png'),
            ),
            Positioned(
              left: -300, // Intentionally overflowing to the left
              top: 500,
              child: Stack(
                children: <Widget>[
                  Text(
                    "SNACK SNACK",
                    style: TextStyle(
                      fontSize: 120,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 2
                        ..color = Colors.white,
                    ),
                  ),
                  Text(
                    "SNACK SNACK",
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: Colors.white.withOpacity(0),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 450),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      height: 250,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white.withOpacity(0.6)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
