import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wilcon_phase2/widget/customized_appbar/appbar_widget.dart';
import 'package:wilcon_phase2/widget/customized_appbar/back_screen_widget.dart';
import 'package:wilcon_phase2/widget/header_bar_widget.dart';

class NotificationAppbarContainerWidget extends StatefulWidget {
  const NotificationAppbarContainerWidget({super.key});

  @override
  State<NotificationAppbarContainerWidget> createState() =>
      _NotificationAppbarContainerWidgetState();
}

class _NotificationAppbarContainerWidgetState
    extends State<NotificationAppbarContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            const SizedBox(height: 24),
            const CustomizedAppBar(),
            BackToPrevScreen(
              onPress: () {
                // Debug print to check if the method is triggered
                debugPrint(
                    'Back button pressed. Attempting to navigate to /home_page');

                // Ensure that the context is valid and GoRouter is used correctly
                try {
                  GoRouter.of(context).go("/home_page");
                  debugPrint('Navigation to /home was successful');
                } catch (error) {
                  debugPrint('Error during navigation: $error');
                }
              },
            ),
            const SizedBox(height: 12),
            const HeaderBar(
              text: 'Notifications',
              isYellow: false,
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
