import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wilcon_phase2/module/checklist/checklist_details/widget/checklist_details_appbar_container_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_details/widget/checklist_details_card_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_details/widget/checklist_details_image_text_container_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/widget/card_widget/header_widget.dart';

class ChecklistDetailsBodyWidget extends StatefulWidget {
  const ChecklistDetailsBodyWidget({super.key});

  @override
  State<ChecklistDetailsBodyWidget> createState() =>
      _ChecklistDetailsBodyWidgetState();
}

class _ChecklistDetailsBodyWidgetState
    extends State<ChecklistDetailsBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Material(
          elevation: 4.0, // Adjust elevation for the floating effect
          shadowColor: Colors.black45, // Optional: To control shadow color
          child: ChecklistDetailsAppbarContainerWidget(),
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
                  ChecklistDetailsCardWidget(
                    description:
                        "Complete installed perimeter fence and perimeter lights.",
                    isCompiled: false,
                    onTap: () {
                      GoRouter.of(context).go("/not_compiled");
                      // Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) =>
                      //             const ChecklistNotCompiledPage()));
                    },
                  ),
                  ChecklistDetailsCardWidget(
                    description:
                        "No bunk house/barracks on-site (Except for the warehouse of contractor’s tools and equipment)",
                    isCompiled: true,
                    onTap: () {
                      GoRouter.of(context).go("/not_compiled");
                    },
                  ),
                  ChecklistDetailsCardWidget(
                    description:
                        "With a separate entrance and exits for workers and delivery trucks",
                    isCompiled: false,
                    onTap: () {
                      GoRouter.of(context).go("/not_compiled");
                    },
                  ),
                  ChecklistDetailsCardWidget(
                    description:
                        "With a temporary warehouse for Wilcon Engineering materials",
                    isCompiled: true,
                    onTap: () {
                      GoRouter.of(context).go("/not_compiled");
                    },
                  ),
                  ChecklistDetailsCardWidget(
                    description:
                        "Certified safety officer on duty (COSH) - provide a copy of the Certificate to Wilcon Project Engineer and Corporate Security Setter",
                    isCompiled: true,
                    onTap: () {
                      GoRouter.of(context).go("/not_compiled");
                    },
                  ),
                  ChecklistDetailsCardWidget(
                    description:
                        "Safety and security signages are in place in noticeable areas",
                    isCompiled: true,
                    onTap: () {
                      GoRouter.of(context).go("/not_compiled");
                    },
                  ),
                  const Divider(height: 1),
                  const SizedBox(height: 12),
                  const HeaderWidget(title: 'Images'),
                  const SizedBox(height: 12),
                  const ChecklistDetailsImageTextContainerWidget(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
