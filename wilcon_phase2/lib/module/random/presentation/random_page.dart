import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/checklist/checklist_parts/widget/checklist_parts_body.dart';
import 'package:wilcon_phase2/widget/sidebar_widget.dart';

class RandomPage extends StatefulWidget {
  const RandomPage({super.key});

  @override
  State<RandomPage> createState() => _RandomPageState();
}

class _RandomPageState extends State<RandomPage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white, //*********** COLOR BLUE ***************
        endDrawer:
            CustomSidebar(), // Make sure this is not const if it is not a const constructor
        body: SafeArea(
          child: ChecklistPartsBody(),
        ),
      ),
    );
  }
}
