import 'dart:convert';
import 'package:flutter/services.dart';
import '../domain/SweetsCard.dart';

class SweetsItem {
  final String name;
  final String description;
  final double price;
  final int like;
  final String imagePath;

  SweetsItem({
    required this.name,
    required this.description,
    required this.price,
    required this.like,
    required this.imagePath,
  });

  factory SweetsItem.fromJson(Map<String, dynamic> json) {
    return SweetsItem(
      name: json['name'],
      description: json['description'],
      price: json['price'].toDouble(),
      like: json['likes'],
      imagePath: json['imagePath'],
    );
  }

 static Future<List<SweetsCard>> fetchSweetsCards() async {
    final String response = await rootBundle.loadString("lib/src/data/sweets_card_data.json");
    final List<dynamic> data = json.decode(response);

    List<SweetsItem> items = data.map((json) => SweetsItem.fromJson(json)).toList();

    return items.map((item) => SweetsCard(item: item)).toList();
  }


}
