import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/homepage/widget/homepage_appbar_container_widget.dart';
import 'package:wilcon_phase2/module/homepage/widget/homepage_body_widget.dart';
import 'package:wilcon_phase2/widget/sidebar_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // ButtonClass buttonClass = ButtonClass();
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.white,
        endDrawer: CustomSidebar(),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                HomepageAppbarContainerWidget(),
                HomepageBodyWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
