import 'package:flutter/material.dart';
import '../data/SweetItemsModel.dart';

class SweetsCard extends StatefulWidget {
  final SweetsItem item;
  const SweetsCard({super.key, required this.item});

  @override
  State<SweetsCard> createState() => _SweetCard();
}

class _SweetCard extends State<SweetsCard> {
  @override
  Widget build(BuildContext context) {
    final item = widget.item;

    return Card(
      elevation: 4,
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
        side: BorderSide(color: Colors.grey, width: 1),
      ),
      child: Container(
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(255, 255, 255, 0),
              Color.fromRGBO(140, 91, 234, 1.0),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(item.imagePath),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(item.name, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(item.description),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\€${item.price.toStringAsFixed(2)}'),
                Text('${item.like} likes'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
