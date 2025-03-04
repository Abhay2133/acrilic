import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Widget child;
  final double width;
  final VoidCallback? onPressed;
  const Button({
    super.key,
    required this.child,
    this.width = 120,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40, // Set height
      width: width,
      child: ElevatedButton(
        onPressed: () {
          onPressed?.call();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFED9999), // Set color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50), // Rounded corners
          ),
        ),
        child: child,
      ),
    );
  }
}
