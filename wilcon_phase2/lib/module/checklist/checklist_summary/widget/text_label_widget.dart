import 'package:flutter/material.dart';

class TextLabelWidget extends StatefulWidget {
  const TextLabelWidget({super.key});

  @override
  State<TextLabelWidget> createState() => _TextLabelWidgetState();
}

class _TextLabelWidgetState extends State<TextLabelWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 12, 8, 12),
      child: const Text(
        'Checklist A (For General Contractor- Daily Safety and Security Checklist',
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w700, letterSpacing: 0.028),
      ),
    );
  }
}
