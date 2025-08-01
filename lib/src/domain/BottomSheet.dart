import 'package:flutter/material.dart';
import 'dart:ui';

class CustomBottomSheet extends StatefulWidget {
  final String imagePath;
  final String name;
  final double price;

  const CustomBottomSheet({
    super.key,
    required this.imagePath,
    required this.name,
    required this.price,
  });

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
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                alignment: Alignment.centerRight,
                                margin: const EdgeInsets.only(right: 16),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  // Align to the right
                                  children: [
                                    Icon(
                                      Icons.favorite_outline,
                                      color: Colors.grey.shade50,
                                      size: 20,
                                    ),
                                    SizedBox(width: 6),
                                    Text(
                                      "200",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),

                              Text(
                                widget.name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.',
                                style: TextStyle(color: Colors.grey.shade50),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                widget.price.toString() +" €",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 33,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 30),
                                child: Divider(
                                  indent: 35,
                                  endIndent: 35,
                                  color: Colors.grey.shade50,
                                ),
                              ),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 50),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Ingrediants",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(right: 50),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Reviews",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
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
