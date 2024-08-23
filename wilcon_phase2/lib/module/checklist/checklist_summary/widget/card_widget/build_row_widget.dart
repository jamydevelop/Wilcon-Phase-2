import 'package:flutter/material.dart';

class BuildRowWidget extends StatelessWidget {
  final String label;
  final String value;
  final Color backgroundColor;
  final bool isTopBorderActivate; // New parameter

  const BuildRowWidget({
    super.key,
    required this.label,
    required this.value,
    required this.backgroundColor,
    this.isTopBorderActivate = true, // Default value set to true
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        border: backgroundColor == Colors.grey[200]
            ? Border(
                top: isTopBorderActivate // Conditional check for top border
                    ? const BorderSide(color: Colors.grey, width: 1.0)
                    : BorderSide.none,
                bottom: const BorderSide(color: Colors.grey, width: 1.0),
              )
            : null,
      ),
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(value),
          ),
        ],
      ),
    );
  }
}
