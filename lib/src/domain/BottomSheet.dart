import 'package:flutter/material.dart';
import 'dart:ui';

class CustomBottomSheet extends StatefulWidget {
  final String imagePath;

  const CustomBottomSheet({super.key, required this.imagePath});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1200,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(widget.imagePath),

              Positioned(
                left: 0,
                right: 0,
                bottom: -300,
                child: SizedBox(
                  height: 400,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: ClipRRect(
                      // needed to clip the blur within borderRadius
                      borderRadius: BorderRadius.circular(12),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.0),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.white.withOpacity(0.3),
                              width: 1,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Text("Mogls'Cup", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 50),
        ],
      ),
    );
  }
}
