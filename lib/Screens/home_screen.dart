import 'package:flutter/material.dart';
import 'package:lifestyle_tracker/Widgets/shortcut.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.chat_bubble)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10.8),
              color: const Color.fromARGB(246,249,254,255),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hello, Priya!',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text('What do you want to learn today?'),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(child: BuildShortcut(name: 'Programs', leadingIcon:  Icons.book)),
                      SizedBox(width: 10),
                      Expanded(child: BuildShortcut(name: 'Get Help',leadingIcon:  Icons.help)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: BuildShortcut(name: 'Learn', leadingIcon:  Icons.menu_book_rounded)),
                      SizedBox(width: 10),
                      Expanded(child: BuildShortcut(name: 'DD Tracker',leadingIcon:  Icons.account_box_outlined)),
                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
