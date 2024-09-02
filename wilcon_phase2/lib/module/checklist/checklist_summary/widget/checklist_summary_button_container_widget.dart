import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wilcon_phase2/widget/buttons_widget/filled_button_widget.dart';
import 'package:wilcon_phase2/widget/buttons_widget/only_text_button_widget.dart';
import 'package:wilcon_phase2/widget/buttons_widget/outlined_button_widget.dart';
import 'package:wilcon_phase2/widget/show_dialog/return_to_security_dialog_widget.dart';

class ChecklistSummaryButtonContainerWidget extends StatefulWidget {
  const ChecklistSummaryButtonContainerWidget({super.key});

  @override
  State<ChecklistSummaryButtonContainerWidget> createState() =>
      _ChecklistSummaryButtonContainerWidgetState();
}

class _ChecklistSummaryButtonContainerWidgetState
    extends State<ChecklistSummaryButtonContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          const SizedBox(height: 12),
          FilledButtonWidget(
            titleText: 'View Checklist',
            onPress: () {
              GoRouter.of(context).go("/checklist_parts");
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => const ChecklistPartsParge()),
              // );
            },
          ),
          const SizedBox(height: 12),
          FilledButtonWidget(
            titleText: 'Confirm',
            onPress: () {
              GoRouter.of(context).go("/signature_page");
              // Navigator.pushReplacement(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => const ChecklistSignaturePage()));
            },
          ),
          const SizedBox(height: 12),
          OutlinedButtonWidget(
            titleText: 'Return to Security Officer',
            onPressed: () {
              _showDialog(context);
            },
          ),
          const SizedBox(height: 12),
          const OnlyTextButtonWidget(titleText: 'Delete'),
          const SizedBox(height: 12),
        ],
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const Dialog(
          backgroundColor: Colors.transparent,
          child: ReturnToSecurityDialogWidget(),
        );
      },
    );
  }
}
