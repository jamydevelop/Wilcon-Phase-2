import 'package:flutter/material.dart';
import 'package:wilcon_phase2/widget/recent_checklist_body_widget.dart';

class HomePageBodyWidget extends StatefulWidget {
  const HomePageBodyWidget({super.key});

  @override
  State<HomePageBodyWidget> createState() => _HomePageBodyWidgetState();
}

class _HomePageBodyWidgetState extends State<HomePageBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.black,
        child: const Column(
          children: [
            //SizedBox(height: 24),
            RecentChecklistBodyWidget(),
          ],
        ),
      ),
    );
  }
}
