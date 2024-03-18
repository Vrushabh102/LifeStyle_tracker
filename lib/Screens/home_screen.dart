import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifestyle_tracker/Widgets/card_widget.dart';
import 'package:lifestyle_tracker/Widgets/shortcut_widget.dart';

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
        backgroundColor: const Color.fromARGB(246, 249, 254, 255),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.chat_bubble)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_none)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              color: const Color.fromARGB(246, 249, 254, 255),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, Priya!',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text('What do you want to learn today?'),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                          child: BuildShortcut(
                              name: 'Programs', leadingIcon: Icons.book)),
                      SizedBox(width: 10),
                      Expanded(
                          child: BuildShortcut(
                              name: 'Get Help', leadingIcon: Icons.help)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          child: BuildShortcut(
                              name: 'Learn',
                              leadingIcon: Icons.menu_book_rounded)),
                      SizedBox(width: 10),
                      Expanded(
                          child: BuildShortcut(
                              name: 'DD Tracker',
                              leadingIcon: Icons.account_box_outlined)),
                      SizedBox(height: 10),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Programs for you',
                        style: TextStyle(fontSize: 18),
                      ),
                      Row(
                        children: [
                          Text('View all'),
                          SizedBox(width: 5),
                          Icon(
                            Icons.arrow_forward_outlined,
                            size: 15,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CardWidget(
                          titleText: 'LIFESTYLE',
                          description: 'A Complete guide for your new born baby',
                          information: '16 lessons',
                          imagePath: 'assets/g10.png',
                          backgroundColorHex: 0xFFDDE3C2,
                        ),
                        SizedBox(width: 16,),
                        CardWidget(
                            titleText: 'WORKING PARENTS',
                            description: 'Understanding of human behaviour',
                            information: '12 lessons',
                            imagePath:  'assets/g11.jpg',
                            backgroundColorHex: 0xFFFFF0D3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
