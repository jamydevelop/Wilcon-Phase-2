import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomepageDraftListButtonWidget extends StatefulWidget {
  const HomepageDraftListButtonWidget({super.key});

  @override
  State<HomepageDraftListButtonWidget> createState() =>
      _HomepageDraftListButtonWidgetState();
}

class _HomepageDraftListButtonWidgetState
    extends State<HomepageDraftListButtonWidget> {
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
          context.go("/draft_list_page");
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
