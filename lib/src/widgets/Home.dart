import 'package:flutter/material.dart';
import '../domain/MenuButton.dart';
import '../domain/CategorieMenuButton.dart';
import '../domain/BurgerCard.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background container and main UI
          Container(
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
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 22,
                    ),
                    children: <Widget>[
                      CategorieMenuButton(titel: "All categories"),
                      const SizedBox(width: 10),
                      MenuButton(titel: "Sallty"),
                      const SizedBox(width: 10),
                      MenuButton(titel: "Sweets"),
                      const SizedBox(width: 10),
                      MenuButton(titel: "Drinks"),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(child: BurgerCard()),
              ],
            ),
          ),

          // Positioned burger image at the top
          Positioned(
            top: 300,
            left: 190,
            child: Image.asset(
              'lib/assets/grafiken/burger.png',
              width: 250, // Adjust size if needed
            ),
          ),
          SizedBox(height: 12),
          Row(
            children: [
              SizedBox(
                height: 100,
                width: 100, // Add width constraint!
                child: ListView(
                  children: [Text("AA",style: TextStyle(color: Colors.white),), Text("BB"), Text("CC")],
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
