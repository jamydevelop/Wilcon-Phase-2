import 'package:flutter/material.dart';

class CheklistPartButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback? onTap; // Add this line

  const CheklistPartButtonWidget({
    required this.title,
    this.onTap, // Add this line
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12), // Space between buttons
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
        // Only apply the border on the bottom
        border: const Border(
          bottom: BorderSide(
              color: Color(0xFF166E16),
              width: 5), // Add border only at the bottom
          // No borders on left, right, and top
          left: BorderSide.none, // No left border
          right: BorderSide.none, // No right border
          top: BorderSide.none, // No top border
        ),
      ),
      child: ListTile(
        leading: const Icon(Icons.check_box, color: Color(0xFF166E16)),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward, color: Color(0xFF166E16)),
        onTap: onTap, // Modify this line to use the onTap parameter
      ),
    );
  }
}
