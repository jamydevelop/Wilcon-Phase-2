import 'package:flutter/material.dart';

class FilledButtonWidget extends StatefulWidget {
  const FilledButtonWidget({super.key});

  @override
  State<FilledButtonWidget> createState() => _FilledButtonWidgetState();
}

class _FilledButtonWidgetState extends State<FilledButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(16.0),
          backgroundColor: const Color(0xFF166E16), // Background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0), // Border radius
          ),
        ),
        onPressed: () {
          // Add your onPressed action here
        },
        child: const Text(
          'View Checklist',
          style: TextStyle(
            color: Color(0xFFF4F7FA), // Text color
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
