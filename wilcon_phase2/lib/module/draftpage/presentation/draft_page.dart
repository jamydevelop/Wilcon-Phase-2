import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/draftpage/widget/draft_page_body_widget.dart';
import 'package:wilcon_phase2/widget/customized_appbar/appbar_widget.dart';
import 'package:wilcon_phase2/widget/customized_appbar/back_screen_widget.dart';
import 'package:wilcon_phase2/widget/header_bar_widget.dart';
import 'package:wilcon_phase2/widget/sidebar_widget.dart';

class DraftPage extends StatefulWidget {
  const DraftPage({super.key});

  @override
  State<DraftPage> createState() => _DraftPageState();
}

class _DraftPageState extends State<DraftPage> {
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
                BackToPrevScreen(),
                SizedBox(height: 12),
                HeaderBar(
                  text: 'Draft List',
                  isYellow: false,
                ),
                SizedBox(height: 48),
                // SizedBox(height: 24),
                DraftPageBodyWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
