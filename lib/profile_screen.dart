import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pages Profile')),
      body: Column(
        // Wrap content in a Column
        children: [
          const SizedBox(height: 16.0), // Spacing between AppBar and content
          Padding(
            // Add padding around the container
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Center(
              // Center the container horizontally
              child: Container(
                constraints:
                    const BoxConstraints(maxWidth: 350.0), // Set max width
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                padding: const EdgeInsets.all(20), // Padding within container
                child: const Column(
                  // Content inside the container
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/avatar.png'),
                          radius: 25,
                        ),
                      ],
                    ),
                    SizedBox(height: 16), // Spacing between elements
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Hans Steel',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Hans Steel',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: GNav(
        color: Colors.grey[800], // Customize navigation bar color
        activeColor: Colors.white, // Customize active tab color
        tabBackgroundColor: Colors.grey[900]!, // Customize tab background color
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        duration: const Duration(milliseconds: 800),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.account_circle, // Consider using a more relevant icon
            text: 'Profile',
            active: true, // Mark the profile tab as active
          ),
          GButton(
            icon: Icons.settings,
            text: 'Settings',
          ),
        ],
      ),
    );
  }
}
