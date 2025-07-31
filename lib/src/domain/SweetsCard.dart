import 'package:flutter/material.dart';

class SweetsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
        side: BorderSide(color: Colors.white, width: 2),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 250,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/assets/grafiken/cupkake_cat.png'),
                    fit: BoxFit.fitHeight,
                    scale: 0.2,
                  ),
                ),
              ),
            ],
          ),
          Text("Mogle's Cup"),
          Text("Strawberry ice cream"),
        Row(
          children: [
            Text('AAA'),
            Text('CCC'),
          ],
        ),],
      ),
    );
  }
}
