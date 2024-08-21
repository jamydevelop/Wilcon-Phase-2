import 'package:flutter/material.dart';

class ChecklistModalWidget extends StatefulWidget {
  const ChecklistModalWidget({super.key});

  @override
  State<ChecklistModalWidget> createState() => _ChecklistModalWidgetState();
}

class _ChecklistModalWidgetState extends State<ChecklistModalWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TextField at the top
          const TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
              height: 16), // Spacing between the TextField and ListTiles

          // ListTiles
          ListTile(
            title: const Text('Daily Sanitation Checklist'),
            onTap: () {
              _handleListItemTap('Daily Sanitation Checklist');
            },
          ),
          ListTile(
            title: const Text(
                'Daily Inspection Checklist \nfor Roving Security Coordinators'),
            onTap: () {
              _handleListItemTap(
                  'Daily Inspection Checklist for Roving Security Coordinators');
            },
          ),
          ListTile(
            title: const Text('Quarterly Risk Assessment Checklist'),
            onTap: () {
              _handleListItemTap('Quarterly Risk Assessment Checklist');
            },
          ),
          ListTile(
            title: const Text('Quarterly Security Agency Evaluation Form'),
            onTap: () {
              _handleListItemTap('Quarterly Security Agency Evaluation Form');
            },
          ),

          const SizedBox(height: 16), // Spacing between ListTiles and Button

          // Button at the bottom
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the modal
              // Add additional action if needed
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF166E16),
              minimumSize: const Size(double.infinity, 52),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: const Text(
              'Load More',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  void _handleListItemTap(String selectedItem) {
    Navigator.of(context).pop(); // Close the modal
    // Handle the list item click here. For example:
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Selected: $selectedItem')),
    );
  }
}
