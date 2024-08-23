import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/draftlist/widget/draft_list_page_body_widget.dart';
import 'package:wilcon_phase2/widget/customized_appbar/appbar_widget.dart';
import 'package:wilcon_phase2/widget/customized_appbar/back_screen_widget.dart';
import 'package:wilcon_phase2/widget/header_bar_widget.dart';
import 'package:wilcon_phase2/widget/sidebar_widget.dart';

class DraftlistPage extends StatefulWidget {
  const DraftlistPage({super.key});

  @override
  State<DraftlistPage> createState() => _DraftlistPageState();
}

class _DraftlistPageState extends State<DraftlistPage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
                DraftlistPageBodyWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
