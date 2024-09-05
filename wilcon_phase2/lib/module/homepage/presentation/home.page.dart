import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/homepage/widget/homepage_appbar_container.widget.dart';
import 'package:wilcon_phase2/module/homepage/widget/homepage_body.widget.dart';
import 'package:wilcon_phase2/widget/sidebar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
