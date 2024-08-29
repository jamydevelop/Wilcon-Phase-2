import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/checklist_summary_button_container_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/card_widget/add_comment_textfield_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/card_widget/first_card_body_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/card_widget/header_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/card_widget/history_update_card_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/card_widget/second_card_body_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/card_widget/third_card_body_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/checklist_appbar_container_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/text_label_widget.dart';
import 'package:wilcon_phase2/widget/divider_with_margin_widget.dart';
import 'package:wilcon_phase2/widget/show_dialog/error_dialog_widget.dart';
import 'package:wilcon_phase2/widget/show_dialog/success_dialog_widget.dart';

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
              //margin: const EdgeInsets.all(12),
              width: double.infinity,
              color: Colors.white, //*********** COLOR TEAL ***************
              child: Column(
                children: <Widget>[
                  const TextLabelWidget(),
                  FirstCardBodyWidget(
                    onPress: () {
                      _showErrorDialog(context);
                    },
                  ),
                  //const Divider(thickness: 1, color: Colors.grey),
                  const DividerWithMarginWidget(),
                  SecondCardBodyWidget(
                    onPress: () {
                      _showSuccessDialog(context);
                    },
                  ),
                  const SizedBox(height: 12),
                  const HeaderWidget(title: 'Comments'),
                  const SizedBox(height: 12),
                  const ThirdCardBodyWidget(),
                  const DividerWithMarginWidget(),
                  const AddCommentTextfieldWidget(),
                  const SizedBox(height: 12),
                  const HeaderWidget(title: 'History'),
                  const SizedBox(height: 12),
                  const HistoryUpdateCardWidget(),
                ],
              ),
            ),
          ),
        ),
        const ChecklistSummaryButtonContainerWidget(),
      ],
    );
  }

  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const Dialog(
          backgroundColor: Colors.transparent,
          child: SuccessDialogWidget(
            title: "Great!",
            confirmationMessage:
                'You have successfully submitted new sanitary schedule. Your checklist ticket number is #1213454655.',
          ),
        );
      },
    );
  }

  void _showErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const Dialog(
          backgroundColor: Colors.transparent,
          child: ErrorDialogWidget(
            title: "Sorry!",
            confirmationMessage:
                'You have entered sanitary schedule that already exists in the system. Please input new schedule.',
          ),
        );
      },
    );
  }
}
