import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String coffeType;
  final bool isSelected;
  final VoidCallback onTap;

  CoffeeType({
    required this.coffeType,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          coffeType,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.orange : Colors.grey[400],
          ),
        ),
      ),
    );
  }
}
