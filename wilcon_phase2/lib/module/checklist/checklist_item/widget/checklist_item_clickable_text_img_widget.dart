import 'package:flutter/material.dart';

class ChecklistItemClickableTextImgWidget extends StatefulWidget {
  final bool isInContainer;

  const ChecklistItemClickableTextImgWidget(
      {super.key, this.isInContainer = true});

  @override
  State<ChecklistItemClickableTextImgWidget> createState() =>
      _ChecklistItemClickableTextImgWidgetState();
}

class _ChecklistItemClickableTextImgWidgetState
    extends State<ChecklistItemClickableTextImgWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Text clicked!'),
          ),
        );
      },
      child: Text(
        'picture.jpg',
        style: TextStyle(
          color: Colors.green,
          decoration: TextDecoration.underline,
          decorationColor: Colors.green,
          fontWeight:
              widget.isInContainer ? FontWeight.bold : FontWeight.normal,
          fontSize: 12,
        ),
      ),
    );
  }
}
