import 'package:flutter/material.dart';

class AmountCounter extends StatefulWidget {
  @override
  State<AmountCounter> createState() => _AmountCounter();
}

class _AmountCounter extends State<AmountCounter> {
  int count = 0;

  void increment() => setState(() => count++);

  void decrement() {
    if (count > 0) setState(() => count--);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            padding: EdgeInsets.all(0),
            iconSize: 20,
            icon: Icon(Icons.remove, color: Colors.white),
            onPressed: decrement,
          ),
        ),
        SizedBox(width: 12),
        Text(
          count.toString(),
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 12),
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            padding: EdgeInsets.all(0),
            iconSize: 20,
            icon: Icon(Icons.add, color: Colors.white),
            onPressed: increment,
          ),
        ),
      ],
    );
  }
}
