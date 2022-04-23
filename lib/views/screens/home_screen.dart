import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:videoapp/const.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final pages = [
    Text('Home Page'),
    Text('Search Page'),
    Text('Upload Page'),
    Text('Message Page'),
    Text('Profile Page'),
  ];
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabBar(
          currentIndex: pageIndex,
          onTap: (index) {
            setState(() {
              pageIndex = index;
            });
          },
          backgroundColor: backgroundColor,
          activeColor: Color.fromARGB(255, 255, 255, 255),
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 25,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 25,
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 25,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.message,
                  size: 25,
                ),
                label: "Message"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 25,
                ),
                label: "Profile"),
          ]),
      body: pages[pageIndex],
    );
  }
}
