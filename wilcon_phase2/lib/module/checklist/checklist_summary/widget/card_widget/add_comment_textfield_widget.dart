import 'package:flutter/material.dart';

class AddCommentTextfieldWidget extends StatefulWidget {
  const AddCommentTextfieldWidget({super.key});

  @override
  State<AddCommentTextfieldWidget> createState() =>
      _AddCommentTextfieldWidgetState();
}

class _AddCommentTextfieldWidgetState extends State<AddCommentTextfieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.symmetric(horizontal: 12),
      child: const SizedBox(
        height: 50, // or any other height that makes sense in your layout
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Add Comment',
            contentPadding: EdgeInsets.all(10.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              borderSide: BorderSide(
                color: Colors
                    .grey, // You can change the color to whatever you prefer
                width: 1.0,
              ),
            ),
          ),
          maxLines: null,
          expands: true, // This can be removed if not necessary
        ),
      ),
    );
  }
}
