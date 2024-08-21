import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/homepage/widget/home_page_body_widget.dart';
import 'package:wilcon_phase2/module/homepage/widget/security_text_widget.dart';
import 'package:wilcon_phase2/widget/customized_appbar/appbar_widget.dart';
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
                SizedBox(height: 48),
                //HeaderUserWidget(),
                SecurityTextWidget(),
                SizedBox(height: 24),
                HomePageBodyWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
