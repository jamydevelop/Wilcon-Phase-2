import 'package:flutter/material.dart';

class ChecklistItemModalWidget extends StatefulWidget {
  const ChecklistItemModalWidget({super.key});

  @override
  State<ChecklistItemModalWidget> createState() =>
      _ChecklistItemModalWidgetState();
}

class _ChecklistItemModalWidgetState extends State<ChecklistItemModalWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Container(
              //   decoration: const BoxDecoration(color: Colors.white),
              //   child: Align(
              //     alignment: Alignment.topRight,
              //     child: _iconClose(),
              //   ),
              // ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.87,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                padding: const EdgeInsets.all(14),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(0),
                      margin: const EdgeInsets.all(0),
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          _iconClose(),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    _imageModalWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _iconClose() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: const Icon(Icons.close_outlined),
    );
  }

  Widget _imageModalWidget() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4.0),
      child: Image.asset(
        'assets/images/construction.jpg',
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.8,
      ),
    );
  }
}
