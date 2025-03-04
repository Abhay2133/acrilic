import 'dart:math';

import 'package:flutter/material.dart';

class StartingBG extends StatelessWidget {
  final Widget mainUI;
  const StartingBG({super.key, required this.mainUI});

  @override
  Widget build(BuildContext context) {
  return Stack(
      fit: StackFit.expand,
      children: [
        // Background Image with Fixed Position and Rotation
        Positioned(
          left: -350, // Adjust position as needed
          top: -400, // Adjust position as needed
          child: Transform.rotate(
            angle: 0, // Rotate 30 degrees (convert degrees to radians)
            child: Image.asset(
              'assets/images/bg-1.png',
              width: 500, // Set width
              // height: 200, // Set height
              fit: BoxFit.cover, // Adjust fit as needed
            ),
          ),
        ),
        Positioned(
          left: -250, // Adjust position as needed
          bottom: 50, // Adjust position as needed
          child: Transform.rotate(
            angle: 0, // Rotate 30 degrees (convert degrees to radians)
            child: Image.asset(
              'assets/images/bg-2.png',
              width: 300, // Set width
              // height: 200, // Set height
              fit: BoxFit.cover, // Adjust fit as needed
            ),
          ),
        ),
        Positioned(
          right: -400, // Adjust position as needed
          bottom: -350, // Adjust position as needed
          child: Transform.rotate(
            angle: 0, // Rotate 30 degrees (convert degrees to radians)
            child: Image.asset(
              'assets/images/bg-3.png',
              width: 500, // Set width
              // height: 200, // Set height
              fit: BoxFit.cover, // Adjust fit as needed
            ),
          ),
        ),

        // Main Content
        mainUI,
      ],
    );
  }
}
