import 'dart:math';

import 'package:acrillic/constants/colors.dart';
import 'package:flutter/material.dart';

class StartingBG extends StatelessWidget {
  final Widget mainUI;
  const StartingBG({super.key, required this.mainUI});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          color: AppColor.primaryBackground,
        ),
        // top-left - Shape
        Positioned(
          left: -200, // Adjust position as needed
          top: -150, // Adjust position as needed
          child: Transform.rotate(
            angle: 0,
            child: Image.asset(
              'assets/images/shape.png',
              width: 300, // Set width
              fit: BoxFit.cover, // Adjust fit as needed
            ),
          ),
        ),
        // bottom-right - Shape
        Positioned(
          right: -100, // Adjust position as needed
          bottom: 80, // Adjust position as needed
          child: Transform.rotate(
            angle: 0,
            child: Image.asset(
              'assets/images/shape.png',
              width: 320, // Set width
              fit: BoxFit.cover, // Adjust fit as needed
            ),
          ),
        ),
        // bottom-left
        Positioned(
          left: -0, // Adjust position as needed
          bottom: 0, // Adjust position as needed
          child: Transform.rotate(
            angle: 0, // Rotate 30 degrees (convert degrees to radians)
            child: Image.asset(
              'assets/images/bg-bottom-left.png',
              width: 300, // Set width
              // height: 200, // Set height
              fit: BoxFit.cover, // Adjust fit as needed
            ),
          ),
        ),
        // Top - Right
        Positioned(
          right: 0, // Adjust position as needed
          top: 0, // Adjust position as needed
          child: Transform.rotate(
            angle: 0, // Rotate 30 degrees (convert degrees to radians)
            child: Image.asset(
              'assets/images/bg-top-right.png',
              width: 300, // Set width
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
