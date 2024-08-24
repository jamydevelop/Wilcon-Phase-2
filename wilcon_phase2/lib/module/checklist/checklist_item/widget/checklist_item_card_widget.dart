import 'package:flutter/material.dart';

class ChecklistItemCardWidget extends StatefulWidget {
  final String description; // Parameter for the description text

  const ChecklistItemCardWidget({super.key, required this.description});

  @override
  State<ChecklistItemCardWidget> createState() =>
      _ChecklistItemCardWidgetState();
}

class _ChecklistItemCardWidgetState extends State<ChecklistItemCardWidget> {
  bool isComplied = false;
  bool isNotComplied = false;

  void _onCompliedChanged(bool? value) {
    setState(() {
      isComplied = value ?? false;
      if (isComplied) {
        isNotComplied = false;
      }
    });
  }

  void _onNotCompliedChanged(bool? value) {
    setState(() {
      isNotComplied = value ?? false;
      if (isNotComplied) {
        isComplied = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey, // Dark grey color
          width: 1.0, // 1px width
        ),
        borderRadius: BorderRadius.circular(4.0), // Apply 4px border radius
      ),
      margin: const EdgeInsets.only(bottom: 12),
      child: Card(
        elevation: 2.0,
        margin:
            EdgeInsets.zero, // Remove margin from Card to align with Container
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.description, // Use the description parameter
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => _onCompliedChanged(!isComplied),
                    child: Row(
                      children: [
                        Checkbox(
                          value: isComplied,
                          onChanged: _onCompliedChanged,
                          activeColor: Colors.green,
                        ),
                        const Text('Complied'),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  GestureDetector(
                    onTap: () => _onNotCompliedChanged(!isNotComplied),
                    child: Row(
                      children: [
                        Checkbox(
                          value: isNotComplied,
                          onChanged: _onNotCompliedChanged,
                          activeColor: Colors.red,
                        ),
                        const Text('Not Complied'),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  if (isNotComplied)
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 8.0),
                      decoration: BoxDecoration(
                        color: Colors.red[50], // Light red background color
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: const Text(
                        '10',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
