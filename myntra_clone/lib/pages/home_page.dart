// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myntra_clone/drawer.dart';
import 'package:myntra_clone/pages/categories.dart';
import 'package:myntra_clone/pages/explore.dart';
import 'package:myntra_clone/pages/homepagedetail.dart';
import 'package:myntra_clone/pages/profile.dart';
import 'package:myntra_clone/pages/studio.dart';
import 'package:velocity_x/velocity_x.dart';


class homepage extends StatefulWidget {
  homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.8,
          title: "Myntra".text.make(),
          actions: [
            IconButton(
              iconSize: 30,
              icon: const Icon(Icons.search),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));
              },
            ),
            IconButton(
              iconSize: 30,
              icon: const Icon(Icons.add_alert),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));
              },
            ),
            IconButton(
              icon: Icon(CupertinoIcons.heart),
              iconSize: 30,
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));
              },
            ),
            IconButton(
              iconSize: 30,
              icon: Icon(CupertinoIcons.bag),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));
              },
            ),
          ],
        ),
        body: pages[_selectedIndex],
        drawer: drawer(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor:Vx.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.live_tv),
              label: 'Studio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: Vx.black,
          selectedItemColor: Colors.pink,
          onTap: _onItemTapped,
        )
        );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final pages = [Homedetailpage(),categories(),studio(),explore(),profile()];

  
}
