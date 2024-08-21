import 'package:flutter/material.dart';

class RecentChecklistTextWidget extends StatefulWidget {
  const RecentChecklistTextWidget({super.key});

  @override
  State<RecentChecklistTextWidget> createState() =>
      _RecentChecklistTextWidgetState();
}

class _RecentChecklistTextWidgetState extends State<RecentChecklistTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 8.0, // 8px padding on the left
        right: 8.0, // 8px padding on the right
        top: 12.0, // 12px padding on the top
      ),
      alignment: Alignment.topLeft, // Align to the top left of the screen
      child: const Text(
        'Recent Checklist',
        style: TextStyle(
          color: Color(0xFF1B1D21), // Palette-Grey-900
          fontFamily: 'Open Sans',
          fontSize: 16,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700, // Bold (700)
          height:
              1.25, // line-height of 20px for a font-size of 16px (20/16 = 1.25)
          letterSpacing: 0.024,
        ),
      ),
    );
  }
}
