import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/auth/presentation/login_page.dart';
import 'package:wilcon_phase2/module/homepage/presentation/home_page.dart';
import 'package:wilcon_phase2/module/project/project_list/presentation/project_list_page.dart';

class CustomSidebar extends StatelessWidget {
  const CustomSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(top: 48.0), // Margin for the top
                    child: ListTile(
                      title: SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.menu,
                              size: 30,
                            ),
                            Image(
                              image: AssetImage(
                                  'assets/images/WilconLogoSmall1.png'),
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  _buildListTile(
                    context,
                    Icons.home,
                    'Homepage',
                    'Homepage tapped',
                    () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const Homepage()),
                    ),
                  ),
                  _buildListTile(
                    context,
                    Icons.check_box_rounded,
                    'Checklist',
                    'Checklist tapped',
                    () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const Homepage()),
                    ),
                  ),
                  _buildListTile(
                    context,
                    Icons.format_list_bulleted_sharp,
                    'For Checking',
                    'For Checking tapped',
                    () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const Homepage()),
                    ),
                  ),
                  _buildListTile(
                    context,
                    Icons.cases_sharp,
                    'Projects',
                    'Projects tapped',
                    () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProjectListPage()),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Divider(), // Horizontal line with margin
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity, // Set the width to match the drawer
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color.fromRGBO(22, 110, 22, 1),
                      side: const BorderSide(
                        color: Color.fromRGBO(22, 110, 22, 1), // Border color
                        width: 2.0, // Border width
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0), // Button height
                    ),
                    onPressed: () {
                      // exit(0);
                      // Define the action for the button here
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    child: const Text('Logout'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(BuildContext context, IconData icon, String title,
      String debugMessage, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0, left: 12.0, right: 12.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: const Color.fromRGBO(22, 110, 22, 1),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(title),
        ),
        onTap: () {
          Navigator.pop(context); // Close the drawer
          debugPrint(debugMessage);
          onTap(); // Perform the navigation action
        },
      ),
    );
  }
}
