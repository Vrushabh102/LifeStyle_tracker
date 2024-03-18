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

  int bottomNavBarIndex = 0;

  final List<Image> navIcons = [
    Image.asset('assets/icons/Home.png'),
    Image.asset('assets/icons/Book-open.png'),
    Image.asset('assets/icons/hub.png'),
    Image.asset('assets/icons/Comment.png'),
    Image.asset('assets/icons/Profile.png'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Image.asset('assets/icons/drawer.png'),
        backgroundColor: const Color.fromARGB(246, 249, 254, 255),
        actions: [
          IconButton(onPressed: () {}, icon: Image.asset('assets/icons/chats.png')),
          IconButton(
              onPressed: () {}, icon: Image.asset('assets/icons/notifications.png')),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              color: const Color.fromARGB(246, 249, 254, 255),
              child: Column(
                // Intro and Shortcuts
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 8, 0, 2),
                    child: Text(
                      'Hello, Priya!',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Lora',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 32),
                    child: Text(
                        'What do you want to learn today?',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: BuildShortcut(
                              name: 'Programs',
                            leading : 'assets/icons/Book-mark.png',
                          ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                          child: BuildShortcut(
                              name: 'Get Help', leading: 'assets/icons/help-circle.png')),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          child: BuildShortcut(
                              name: 'Learn',
                              leading: 'assets/icons/Book-open.png')),
                      const SizedBox(width: 10),
                      Expanded(
                          child: BuildShortcut(
                              name: 'DD Tracker',
                              leading: 'assets/icons/trello.png')),
                      const SizedBox(height: 10),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(top: 56),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Programs for you',
                          style: TextStyle(fontSize: 18),
                        ),
                        Row(
                          children: [
                            const Text(
                              'View all',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            const SizedBox(width: 5),
                            Image.asset('assets/icons/Arrow.png')
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const SingleChildScrollView(
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
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Events and experiences',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            'View all',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          const SizedBox(width: 5),
                          Image.asset('assets/icons/Arrow.png')
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row (
                      children: [
                        CardWidgetTwo(
                          titleText: 'BABYCARE',
                          description: 'Understanding of human behaviour',
                          information: '13 Feb, Sunday',
                          buttonText: 'Book',
                          imagePath: 'assets/g21.png',
                          backgroundColorHex: 0xFFDDE3C2,
                        ),
                        SizedBox(width: 16,),
                        CardWidgetTwo(
                          titleText: 'BABYCARE',
                          description: 'Understanding of human behaviour',
                          information: '13 Feb, Sunday',
                          buttonText: 'Book',
                          imagePath:  'assets/g21.png',
                          backgroundColorHex: 0xFFFFF0D3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Lessons for you',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            'View all',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          const SizedBox(width: 5),
                          Image.asset('assets/icons/Arrow.png')
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row (
                      children: [
                        CardWidgetThree(
                          titleText: 'BABYCARE',
                          description: 'Understanding of human behaviour',
                          information: '3 min',
                          imagePath: 'assets/g21.png',
                          backgroundColorHex: 0xFFDDE3C2,
                          iconPath: 'assets/lock.png',
                        ),
                        SizedBox(width: 16,),
                        CardWidgetThree(
                          titleText: 'BABYCARE',
                          description: 'Understanding of human behaviour',
                          information: '3 min',
                          iconPath: 'assets/lock.png',
                          imagePath: 'assets/g21.png',
                          backgroundColorHex: 0xFFDDE3C2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomNavBarIndex,
        onTap: (index) {
          setState(() {
            bottomNavBarIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF598BED),
        selectedIconTheme: const IconThemeData(
          color: Color(0xFF598BED)
        ),
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home'
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_rounded),
            label: 'Learn'
          ),
          BottomNavigationBarItem(
              icon: navIcons[2],
              label: 'Hub'
          ),
          BottomNavigationBarItem(
              icon: navIcons[3],
              label: 'Chat'
          ),
          BottomNavigationBarItem(
            icon: navIcons[4],
              label: 'Profile',
          ),
        ],
      ),

      drawer: const Drawer(
        // DO NOTING
      ),


    );
  }
}
