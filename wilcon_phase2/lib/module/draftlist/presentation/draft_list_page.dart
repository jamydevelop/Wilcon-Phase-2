import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/draftlist/widget/draft_list_appbar_container_widget.dart';
import 'package:wilcon_phase2/module/draftlist/widget/draft_list_page_body_widget.dart';
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              DraftListAppbarContainerWidget(),
              DraftlistPageBodyWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
