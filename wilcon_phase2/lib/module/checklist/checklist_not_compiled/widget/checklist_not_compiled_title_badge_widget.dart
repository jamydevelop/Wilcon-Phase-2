import 'package:flutter/material.dart';

class ChecklistNotCompiledTitleBadgeWidget extends StatefulWidget {
  const ChecklistNotCompiledTitleBadgeWidget({super.key});

  @override
  State<ChecklistNotCompiledTitleBadgeWidget> createState() =>
      _ChecklistNotCompiledTitleBadgeWidgetState();
}

class _ChecklistNotCompiledTitleBadgeWidgetState
    extends State<ChecklistNotCompiledTitleBadgeWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: const Color(0xFFFDE4E1), // Light pinkish background color
          borderRadius: BorderRadius.circular(24.0), // Rounded corners
        ),
        child: const Text(
          'Points: 2',
          style: TextStyle(
            color: Color(0xFF5A2D2C), // Dark brown text color
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
