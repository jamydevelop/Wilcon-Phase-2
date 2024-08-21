import 'package:flutter/material.dart';

class DraftListButtonWidget extends StatefulWidget {
  const DraftListButtonWidget({super.key});

  @override
  State<DraftListButtonWidget> createState() => _DraftListButtonWidgetState();
}

class _DraftListButtonWidgetState extends State<DraftListButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Takes all available width
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: const Color(0xFFF4F7FA), // Text color
          backgroundColor: const Color(0xFF166E16), // Background color
          padding: const EdgeInsets.all(12.0), // Padding of 12px on all sides
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0), // Border radius of 4px
          ),
        ),
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Text(
          'Draft List',
          style: TextStyle(
            fontSize: 14.0, // Font size of 14px
          ),
        ),
      ),
    );
  }
}
