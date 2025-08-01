import 'package:flutter/material.dart';
import '../domain/MenuButton.dart';
import '../domain/CategorieMenuButton.dart';
import '../domain/BurgerCard.dart';
import '../domain/SweetsCard.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import '../data/SweetItemsModel.dart';
import '../domain/BottomSheet.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.only(top: 70),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/hintergruende/bg_mainscreen.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
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

              Row(
                children: [
                  Expanded(
                    child: SizedBox(
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
                  ),
                ],
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 360,
                    height: 300,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned.fill(child: BurgerCard()),

                        Positioned(
                          top: 60,
                          left: 160,
                          child: Image.asset(
                            'lib/assets/grafiken/burger.png',
                            width: 230,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              Row(
                children: [
                  Text(
                    "We Recomended",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 350,
                      child: FutureBuilder<List<SweetsCard>>(
                        future: SweetsItem.fetchSweetsCards(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState == ConnectionState.waiting) {
                            return const Center(child: CircularProgressIndicator());
                          } else if (snapshot.hasError) {
                            return Center(child: Text('Error: ${snapshot.error}'));
                          } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      final sweetsItem = snapshot.data![index].item;

                                      showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                                        ),
                                        builder: (context) => CustomBottomSheet(
                                          imagePath: sweetsItem.imagePath,name: sweetsItem.name,
                                        ),
                                      );
                                    },

                                    child: snapshot.data![index],
                                  ),
                                );
                              },
                            );
                          } else {
                            return const Center(child: Text('No data available'));
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
