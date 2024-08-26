import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/checklist/checklist_details/widget/checklist_details_clickable_text_img_widget.dart';
import 'package:wilcon_phase2/widget/build_row_widget.dart';

class ChecklistNotCompiledContainerCardWidget extends StatefulWidget {
  const ChecklistNotCompiledContainerCardWidget({super.key});

  @override
  State<ChecklistNotCompiledContainerCardWidget> createState() =>
      _ChecklistNotCompiledContainerCardWidgetState();
}

class _ChecklistNotCompiledContainerCardWidgetState
    extends State<ChecklistNotCompiledContainerCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildRowWidget(
          label: 'No of Violation',
          value: '10',
          backgroundColor: Colors.grey[200]!,
          isTopBorderActivate: false,
        ),
        const BuildRowWidget(
          label: 'Remarks',
          value: '10',
          backgroundColor: Colors.white,
          isTopBorderActivate: false,
        ),
        BuildRowWidget(
          label: 'Image',
          customWidget: const ChecklistDetailsClickableTextImgWidget(),
          backgroundColor: Colors.grey[200]!,
          isTopBorderActivate: true,
        ),
        const BuildRowWidget(
          label: '',
          customWidget: ChecklistDetailsClickableTextImgWidget(),
          backgroundColor: Colors.white,
          isTopBorderActivate: false,
        ),
      ],
    );
  }
}
