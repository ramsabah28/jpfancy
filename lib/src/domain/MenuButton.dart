import 'dart:ui';

import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  @override
  Widget build(BuildContext con) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),

      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),

        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white, width: 1),
          ),
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              foregroundColor: Colors.white,
            ),

            child: const Text(
              "All Categorys",
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
