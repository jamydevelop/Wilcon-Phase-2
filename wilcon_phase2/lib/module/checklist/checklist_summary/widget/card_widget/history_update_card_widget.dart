import 'package:flutter/material.dart';

class HistoryUpdateCardWidget extends StatefulWidget {
  const HistoryUpdateCardWidget({super.key});

  @override
  State<HistoryUpdateCardWidget> createState() =>
      _HistoryUpdateCardWidgetState();
}

class _HistoryUpdateCardWidgetState extends State<HistoryUpdateCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[350], // Background color
        border: const Border(
          bottom: BorderSide(
            color: Colors.grey, // Bottom border color
            width: 1.0,
          ),
        ),
      ),
      child: Text(
        'No available history',
        style: TextStyle(
          color: Colors.grey[600], // Text color
          fontSize: 16.0,
        ),
      ),
    );
  }
}
