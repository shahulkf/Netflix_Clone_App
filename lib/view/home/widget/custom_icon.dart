import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

class CustomIconWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final double iconsize;
  final double textsize;
  const CustomIconWidget({
    super.key,
    required this.icon,
    required this.label,
    this.iconsize=30,
    this.textsize=18
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        Icon(
         icon,
          color: baseColor,
          size: iconsize,
        ),
        Text(label,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: textsize))
      ],
    );
  }
}