import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/checklist/checklist_parts/presentation/checklist_parts_parge.dart';

class FilledButtonWidget extends StatefulWidget {
  final String titleText;
  final VoidCallback? onPress; // Add the onPress parameter

  const FilledButtonWidget({super.key, required this.titleText, this.onPress});

  @override
  State<FilledButtonWidget> createState() => _FilledButtonWidgetState();
}

class _FilledButtonWidgetState extends State<FilledButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(16.0),
          backgroundColor: const Color(0xFF166E16), // Background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0), // Border radius
          ),
        ),
        onPressed: widget.onPress ??
            () {
              // Default action if no onPress is provided
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChecklistPartsParge(),
                ),
              );
            },
        child: Text(
          widget.titleText,
          style: const TextStyle(
            color: Color(0xFFF4F7FA), // Text color
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
