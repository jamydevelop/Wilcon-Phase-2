import 'package:flutter/material.dart';

class OutlinedButtonWidget extends StatefulWidget {
  final String titleText;
  final VoidCallback? onPressed; // Added onPressed parameter

  const OutlinedButtonWidget({
    super.key,
    required this.titleText,
    this.onPressed, // Initialize onPressed
  });

  @override
  State<OutlinedButtonWidget> createState() => _OutlinedButtonWidgetState();
}

class _OutlinedButtonWidgetState extends State<OutlinedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(16.0),
          backgroundColor: Colors.white, // Background color set to white
          side: const BorderSide(
            color: Color(0xFF166E16), // Stroke color
            width: 2.0, // Stroke width
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0), // Border radius
          ),
        ),
        onPressed: widget.onPressed, // Use onPressed from the widget
        child: Text(
          widget.titleText, // Use titleText for the button text
          style: const TextStyle(
            color: Color(0xFF166E16), // Text color set to #166E16
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
