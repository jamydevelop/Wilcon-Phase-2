import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/checklist/checklist_item/presentation/checklist_item_page.dart';
import 'package:wilcon_phase2/module/checklist/checklist_parts/widget/checklist_parts_appbar_container_widget.dart';
import 'package:wilcon_phase2/module/checklist/checklist_parts/widget/cheklist_part_button_widget.dart';

class ChecklistPartsBody extends StatefulWidget {
  const ChecklistPartsBody({super.key});

  @override
  State<ChecklistPartsBody> createState() => _ChecklistPartsBodyState();
}

class _ChecklistPartsBodyState extends State<ChecklistPartsBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Material(
          elevation: 4.0, // Adjust elevation for the floating effect
          shadowColor: Colors.black45, // Optional: To control shadow color
          child: ChecklistPartsAppbarContainerWidget(),
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
                  CheklistPartButtonWidget(
                    title: 'Part A: Pre-Construction Requirements',
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChecklistItemPage()));
                    },
                  ),
                  CheklistPartButtonWidget(
                    title: 'Part B: Accessing the Construction Area',
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChecklistItemPage()));
                    },
                  ),
                  CheklistPartButtonWidget(
                    title: 'Part C: Restriction in using Wilcon Equipment',
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChecklistItemPage()));
                    },
                  ),
                  CheklistPartButtonWidget(
                    title: 'Part D: Cleanliness and Sanitation',
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChecklistItemPage()));
                    },
                  ),
                  CheklistPartButtonWidget(
                    title: 'Part E: Medical Facilities',
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChecklistItemPage()));
                    },
                  ),
                  CheklistPartButtonWidget(
                    title: 'Part F: Fire Safety',
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChecklistItemPage()));
                    },
                  ),
                  CheklistPartButtonWidget(
                    title: 'Part G: Supervision and Monitoring',
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChecklistItemPage()));
                    },
                  ),
                  CheklistPartButtonWidget(
                    title: 'Part H: On-sites rules and Regulations',
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChecklistItemPage()));
                    },
                  ),
                  CheklistPartButtonWidget(
                    title: 'Part I: Standard Utilities & Equipment',
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChecklistItemPage()));
                    },
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
