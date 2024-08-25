import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/checklist/checklist_item/widget/checklist_item_clickable_text_img_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_not_compiled/widget/checklist_not_compiled_appbar_container_widget.dart';
import 'package:wilcon_phase2/widget/build_row_widget.dart';

class ChecklistNotCompiledBodyWidget extends StatefulWidget {
  const ChecklistNotCompiledBodyWidget({super.key});

  @override
  State<ChecklistNotCompiledBodyWidget> createState() =>
      _ChecklistNotCompiledBodyWidgetState();
}

class _ChecklistNotCompiledBodyWidgetState
    extends State<ChecklistNotCompiledBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Material(
          elevation: 4.0, // Adjust elevation for the floating effect
          shadowColor: Colors.black45, // Optional: To control shadow color
          child: ChecklistNotCompiledAppbarContainerWidget(),
        ),
        const SizedBox(height: 12),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(
                bottom: 12,
                left: 12,
                right: 12,
              ),
              width: double.infinity,
              child: Column(
                children: <Widget>[
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
                    customWidget: const ChecklistItemClickableTextImgWidget(),
                    backgroundColor: Colors.grey[200]!,
                    isTopBorderActivate: true,
                  ),
                  const BuildRowWidget(
                    label: '',
                    customWidget: ChecklistItemClickableTextImgWidget(),
                    backgroundColor: Colors.white,
                    isTopBorderActivate: false,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
