import 'package:flutter/material.dart';

class SecurityTextWidget extends StatefulWidget {
  const SecurityTextWidget({super.key});

  @override
  State<SecurityTextWidget> createState() => _SecurityTextWidgetState();
}

class _SecurityTextWidgetState extends State<SecurityTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft, // Aligns the widget to the left
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: BorderRadius.circular(20.0), // Rounded corners
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Security',
              style: TextStyle(
                color: Colors.white, // White text color
                fontFamily: 'Open Sans', // Open Sans font family
                fontSize: 12.0, // Font size 12px
                fontWeight: FontWeight.w600, // Font weight 600
                height: 20 / 12, // Line height of 20px (166.667%)
                letterSpacing: 0.048, // Letter spacing of 0.048px
              ),
            ),
          ],
        ),
      ),
    );
  }
}
