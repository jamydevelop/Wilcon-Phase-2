import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/homepage/widget/card_container_widget.dart';
import 'package:wilcon_phase2/module/homepage/widget/draft_list_button_widget.dart';
import 'package:wilcon_phase2/module/homepage/widget/dropdown_list_widget.dart';

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
        color: Colors.white,
        child: const Column(
          children: [
            DropdownListWidget(),
            SizedBox(height: 24),
            DraftListButtonWidget(),
            SizedBox(height: 24),
            CardContainerWidget(),
          ],
        ),
      ),
    );
  }
}
