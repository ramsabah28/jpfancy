import 'package:flutter/material.dart';

class OrderButton extends StatelessWidget {
  final String titel;

  OrderButton({required this.titel, super.key});

  @override
  Widget build(BuildContext con) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 0,
        maxWidth:double.infinity,
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(233, 232, 40, 193),
                Color.fromARGB(246, 195, 69, 69),
              ],
            ),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            alignment: Alignment.center,
            child: Text(
              titel,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                colors: [
                  Colors.pink.shade50.withOpacity(0.5),
                  Colors.pink.withOpacity(0.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
