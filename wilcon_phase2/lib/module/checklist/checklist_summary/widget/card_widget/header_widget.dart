import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String title;

  const HeaderWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56, // height of the header
      padding: const EdgeInsets.symmetric(horizontal: 12), // padding
      alignment: Alignment.centerLeft, // aligns the content to the center-left
      decoration: const BoxDecoration(
        color: Color(0xFF15422B),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4)), // background color #15422B
      ),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, // text color white
                fontSize: 18,
                fontWeight:
                    FontWeight.w700 // default font size, adjust as needed
                ),
          ),
          const SizedBox(width: 10), // gap of 10px
        ],
      ),
    );
  }
}
