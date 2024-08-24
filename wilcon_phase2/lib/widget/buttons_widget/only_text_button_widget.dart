import 'package:flutter/material.dart';

class OnlyTextButtonWidget extends StatefulWidget {
  final String titleText;

  const OnlyTextButtonWidget({super.key, required this.titleText});

  @override
  State<OnlyTextButtonWidget> createState() => _OnlyTextButtonWidgetState();
}

class _OnlyTextButtonWidgetState extends State<OnlyTextButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(16.0),
          backgroundColor: Colors.white, // Background color set to white
          side: const BorderSide(
            color: Colors.white, // Outline color set to white
            width: 2.0, // Stroke width
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0), // Border radius
          ),
        ),
        onPressed: () {
          // Add your onPressed action here
        },
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
