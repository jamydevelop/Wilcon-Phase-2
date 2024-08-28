import 'package:flutter/material.dart';
import 'package:wilcon_phase2/widget/customized_appbar/appbar_widget.dart';
import 'package:wilcon_phase2/widget/customized_appbar/back_screen_widget.dart';
import 'package:wilcon_phase2/widget/header_bar_widget.dart';

class ProjectListAppbarContainerWidget extends StatefulWidget {
  const ProjectListAppbarContainerWidget({super.key});

  @override
  State<ProjectListAppbarContainerWidget> createState() =>
      _ProjectListAppbarContainerWidgetState();
}

class _ProjectListAppbarContainerWidgetState
    extends State<ProjectListAppbarContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            const SizedBox(height: 24),
            const CustomizedAppBar(),
            const BackToPrevScreen(),
            const SizedBox(height: 12),
            const HeaderBar(
              text: 'Projects',
              isYellow: false,
            ),
            const SizedBox(height: 12),
            filterButton(),
            const SizedBox(height: 12),
            // const Align(
            //   alignment: Alignment.centerLeft,
            //   child: Text('Input simple instruction here. Make it short.'),
            // ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget filterButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor:
            const Color(0xFF166E16), // Background color of the button
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0), // Rounded corners
        ),
        padding: const EdgeInsets.symmetric(
            vertical: 12.0), // Vertical padding inside the button
      ),
      onPressed: () {
        // Define the onPress action here
      },
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center, // Center the icon and text
        children: [
          Icon(
            Icons.filter_list, // Filter icon
            color: Colors.white, // Icon color
            size: 20.0, // Icon size
          ),
          SizedBox(width: 8.0), // Space between icon and text
          Text(
            'Filter',
            style: TextStyle(
              color: Colors.white, // Text color
              fontSize: 14.0, // Text size
              fontWeight: FontWeight.bold, // Text style
            ),
          ),
        ],
      ),
    );
  }
}
