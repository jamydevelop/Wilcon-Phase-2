import 'package:flutter/material.dart';

class ProjectModalWidget extends StatefulWidget {
  const ProjectModalWidget({super.key});

  @override
  State<ProjectModalWidget> createState() => _ProjectModalWidgetState();
}

class _ProjectModalWidgetState extends State<ProjectModalWidget> {
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
            title: const Text('1st Project Name'),
            onTap: () {
              _handleListItemTap('1st Project Name');
            },
          ),
          ListTile(
            title: const Text('2nd Project Name'),
            onTap: () {
              _handleListItemTap('2nd Project Name');
            },
          ),
          ListTile(
            title: const Text('3rd Project Name'),
            onTap: () {
              _handleListItemTap('3rd Project Name');
            },
          ),
          ListTile(
            title: const Text('4th Project Name'),
            onTap: () {
              _handleListItemTap('4th Project Name');
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
