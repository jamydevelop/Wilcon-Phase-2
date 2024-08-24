import 'package:flutter/material.dart';
import 'package:wilcon_phase2/widget/buttons_widget/filled_button_widget.dart';
import 'package:wilcon_phase2/widget/buttons_widget/only_text_button_widget.dart';
import 'package:wilcon_phase2/widget/buttons_widget/outlined_button_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/card_widget/add_comment_textfield_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/card_widget/first_card_body_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/card_widget/header_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/card_widget/history_update_card_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/card_widget/second_card_body_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/card_widget/third_card_body_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/checklist_appbar_container_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/text_label_widget.dart';

class ChecklistBodyWidget extends StatefulWidget {
  const ChecklistBodyWidget({super.key});

  @override
  State<ChecklistBodyWidget> createState() => _ChecklistBodyWidgetState();
}

class _ChecklistBodyWidgetState extends State<ChecklistBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Material(
          elevation: 4.0, // Adjust elevation for the floating effect
          shadowColor: Colors.black45, // Optional: To control shadow color
          child: ChecklistAppbarContainerWidget(),
        ),
        const SizedBox(height: 12),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(12),
              width: double.infinity,
              color: Colors.white, //*********** COLOR TEAL ***************
              child: const Column(
                children: <Widget>[
                  TextLabelWidget(),
                  FirstCardBodyWidget(),
                  Divider(thickness: 1, color: Colors.grey),
                  SecondCardBodyWidget(),
                  SizedBox(height: 12),
                  HeaderWidget(title: 'Comments'),
                  SizedBox(height: 12),
                  ThirdCardBodyWidget(),
                  Divider(thickness: 1, color: Colors.grey),
                  AddCommentTextfieldWidget(),
                  SizedBox(height: 12),
                  HeaderWidget(title: 'History'),
                  SizedBox(height: 12),
                  HistoryUpdateCardWidget(),
                  SizedBox(height: 12),
                  FilledButtonWidget(titleText: 'View Checklist'),
                  SizedBox(height: 12),
                  OutlinedButtonWidget(titleText: 'Edit'),
                  SizedBox(height: 12),
                  OnlyTextButtonWidget(titleText: 'Delete'),
                  SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
