import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/notifications/widgets/notification_appbar_container_widget.dart';
import 'package:wilcon_phase2/module/notifications/widgets/notification_body_widget.dart';
import 'package:wilcon_phase2/widget/sidebar_widget.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer:
          const CustomSidebar(), // Make sure this is not const if it is not a const constructor
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const NotificationAppbarContainerWidget(),

              // const SizedBox(height: 24),
              // const CustomizedAppBar(),
              // const BackToPrevScreen(),
              // const SizedBox(height: 12),
              // const HeaderBar(
              //   text: 'Notifications',
              //   isYellow: false,
              // ),
              // const SizedBox(height: 24),
              // Adding elevation to the NotificationBodyWidget
              Expanded(
                child: Card(
                  elevation: 4.0, // Adjust the elevation value as needed
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        0.0), // Optional: add rounded corners
                  ),
                  child: const NotificationBodyWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
