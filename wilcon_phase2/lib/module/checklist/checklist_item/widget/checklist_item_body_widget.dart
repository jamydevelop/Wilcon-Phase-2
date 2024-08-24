import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/checklist/checklist_item/widget/checklist_item_appbar_container_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_item/widget/checklist_item_card_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_item/widget/checklist_item_image_text_container_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_not_compiled/presentation/checklist_not_compiled_page.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/card_widget/header_widget.dart';

class ChecklistItemBodyWidget extends StatefulWidget {
  const ChecklistItemBodyWidget({super.key});

  @override
  State<ChecklistItemBodyWidget> createState() =>
      _ChecklistItemBodyWidgetState();
}

class _ChecklistItemBodyWidgetState extends State<ChecklistItemBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Material(
          elevation: 4.0, // Adjust elevation for the floating effect
          shadowColor: Colors.black45, // Optional: To control shadow color
          child: ChecklistItemAppbarContainerWidget(),
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
                  ChecklistItemCardWidget(
                    description:
                        "Complete installed perimeter fence and perimeter lights.",
                    isCompiled: false,
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ChecklistNotCompiledPage()));
                    },
                  ),
                  ChecklistItemCardWidget(
                    description:
                        "No bunk house/barracks on-site (Except for the warehouse of contractor’s tools and equipment)",
                    isCompiled: true,
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ChecklistNotCompiledPage()));
                    },
                  ),
                  ChecklistItemCardWidget(
                    description:
                        "With a separate entrance and exits for workers and delivery trucks",
                    isCompiled: false,
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ChecklistNotCompiledPage()));
                    },
                  ),
                  ChecklistItemCardWidget(
                    description:
                        "With a temporary warehouse for Wilcon Engineering materials",
                    isCompiled: true,
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ChecklistNotCompiledPage()));
                    },
                  ),
                  ChecklistItemCardWidget(
                    description:
                        "Certified safety officer on duty (COSH) - provide a copy of the Certificate to Wilcon Project Engineer and Corporate Security Setter",
                    isCompiled: true,
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ChecklistNotCompiledPage()));
                    },
                  ),
                  ChecklistItemCardWidget(
                    description:
                        "Safety and security signages are in place in noticeable areas",
                    isCompiled: true,
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ChecklistNotCompiledPage()));
                    },
                  ),
                  const Divider(height: 1),
                  const SizedBox(height: 12),
                  const HeaderWidget(title: 'Images'),
                  const SizedBox(height: 12),
                  const ChecklistItemImageTextContainerWidget(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
