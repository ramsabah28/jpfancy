import 'package:flutter/material.dart';

class BottomSheet extends StatefulWidget {
  @override
  State<BottomSheet> createState() => _BottomSheet();
}

class _BottomSheet extends State<BottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [Image.asset('lib/assets/grafiken/cupcake_chick.png')],
      ),
    );
  }
}
