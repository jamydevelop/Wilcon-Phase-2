import 'package:flutter/material.dart';

class OutlinedButtonWidget extends StatefulWidget {
  const OutlinedButtonWidget({super.key});

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
        onPressed: () {
          // Add your onPressed action here
        },
        child: const Text(
          'Edit', // Text updated to "Edit"
          style: TextStyle(
            color: Color(0xFF166E16), // Text color set to #166E16
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
