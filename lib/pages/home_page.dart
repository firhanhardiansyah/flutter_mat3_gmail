import 'package:flutter/material.dart';
import 'package:material3_gmail/pages/chat_page.dart';
import 'package:material3_gmail/pages/mail_page.dart';
import 'package:material3_gmail/pages/meet_page.dart';
import 'package:material3_gmail/pages/spaces_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final screens = [
    const MailPage(),
    const ChatPage(),
    const SpacesPage(),
    const MeetPage(),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Colors.blue.shade100,
            labelTextStyle: MaterialStateProperty.all(
                const TextStyle(fontSize: 14, fontWeight: FontWeight.w500))),
        child: NavigationBar(
          height: 48,
          destinations: [
            Stack(
              children: [
                const NavigationDestination(
                    selectedIcon: Icon(Icons.email),
                    icon: Icon(Icons.email_outlined),
                    label: 'Mail'),
                Positioned(
                  top: 4.0,
                  left: 52.0,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(100)),
                    child: const Text(
                      '99+',
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            const NavigationDestination(
                selectedIcon: Icon(Icons.chat_bubble),
                icon: Icon(Icons.chat_bubble_outline),
                label: 'Chat'),
            const NavigationDestination(
                selectedIcon: Icon(Icons.group),
                icon: Icon(Icons.group_outlined),
                label: 'Rooms'),
            const NavigationDestination(
                selectedIcon: Icon(Icons.videocam),
                icon: Icon(Icons.videocam_outlined),
                label: 'Meet'),
          ],
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() {
            this.index = index;
          }),
        ),
      ),
    );
  }
}
