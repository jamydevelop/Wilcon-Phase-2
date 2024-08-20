import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/homepage/widget/customized_appbar/appbar_widget.dart';
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
        endDrawer: CustomSidebar(),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomizedAppBar(),
                SizedBox(height: 24),
                //HeaderUserWidget(),
                SizedBox(height: 24),
                // HomepageBodyWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
