import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/checklist/random/widget/random_appbar_container_widget.dart';

class RandomBody extends StatefulWidget {
  const RandomBody({super.key});

  @override
  State<RandomBody> createState() => _RandomBodyState();
}

class _RandomBodyState extends State<RandomBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Material(
          elevation: 4.0, // Adjust elevation for the floating effect
          shadowColor: Colors.black45, // Optional: To control shadow color
          child: RandomAppbarContainerWidget(),
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
              child: const Column(
                children: <Widget>[],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
