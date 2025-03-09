import 'package:acrillic/constants/colors.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Widget child;
  final double width;
  final VoidCallback? onPressed;
  final bool? disabled;
  const Button({
    super.key,
    required this.child,
    this.width = 120,
    this.onPressed,
    this.disabled = false
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
          elevation: 4,
          backgroundColor: AppColor.primaryButton, // Set color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50), // Rounded corners
          ),
        ),
        child: child,
      ),
    );
  }
}

