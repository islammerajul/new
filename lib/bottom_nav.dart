import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mental_health_app/first_page.dart';
import 'package:mental_health_app/second_page.dart';
import 'package:mental_health_app/third_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int CurrentIndex = 0;
  List<Widget> pages = [FirstPage(), SecondPage(), ThirdPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: CurrentIndex,
          onTap: (value) {
            setState(() {
              CurrentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.category_outlined,
                  color: Colors.blue,
                ),
                label: 'Category'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.message,
                  color: Colors.blue,
                ),
                label: 'Message'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                label: 'Person'),
          ]),
      body: pages[CurrentIndex],
    );
  }
}
