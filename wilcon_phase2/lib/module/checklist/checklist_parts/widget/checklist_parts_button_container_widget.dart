import 'package:flutter/material.dart';
import 'package:wilcon_phase2/widget/buttons_widget/filled_button_widget.dart';
import 'package:wilcon_phase2/widget/buttons_widget/outlined_button_widget.dart';
import 'package:wilcon_phase2/widget/show_dialog/warehouse_dialog_widget.dart';

class ChecklistPartsButtonContainerWidget extends StatefulWidget {
  const ChecklistPartsButtonContainerWidget({super.key});

  @override
  State<ChecklistPartsButtonContainerWidget> createState() =>
      _ChecklistPartsButtonContainerWidgetState();
}

class _ChecklistPartsButtonContainerWidgetState
    extends State<ChecklistPartsButtonContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        children: [
          const Divider(thickness: 1, color: Colors.grey),
          const SizedBox(height: 12),
          FilledButtonWidget(
            titleText: 'Save',
            onPress: () {
              _showDialog(context);
            },
          ),
          const SizedBox(height: 12),
          OutlinedButtonWidget(
            titleText: 'Cancel',
            onPressed: () {},
          ),
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
          child: WarehouseDialogWidget(),
        );
      },
    );
  }
}
