import 'package:flutter/material.dart';
import '../domain/MenuButton.dart';
import '../domain/CategorieMenuButton.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 70),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/hintergruende/bg_mainscreen.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Text(
              "Choose Your Favorite Snack",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 22),
                children: <Widget>[
                  CategorieMenuButton(titel: "All categories"),
                  const SizedBox(width: 10,),
                  MenuButton(titel: "Sallty",),
                  const SizedBox(width: 10,),
                  MenuButton(titel: "Sweets",),
                  const SizedBox(width: 10,),
                  MenuButton(titel: "Drinks",),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
