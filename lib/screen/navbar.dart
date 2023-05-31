


import 'package:flutter/material.dart';
import 'package:simple_date/screen/chat_page.dart';
import 'package:simple_date/screen/home_page.dart';
import 'package:simple_date/screen/profile_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
   int _selectedIndex = 0;  

   static const List<Widget> _pages = <Widget>[
    HomePage(),
    ProfilePage(),
    ChatPage(),
   Icon(Icons.settings),
  ];

  @override
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

   


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,

       items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_rounded),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
       ],
      ),
      body: 
      Center(
        child: _pages.elementAt(_selectedIndex),

      )
      
    );
  }
}
