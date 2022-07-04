// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myntra_clone/drawer.dart';
import 'package:myntra_clone/pages/categories.dart';
import 'package:myntra_clone/pages/explore.dart';
import 'package:myntra_clone/pages/homepagedetail.dart';
import 'package:myntra_clone/pages/profile.dart';
import 'package:myntra_clone/pages/studio.dart';
import 'package:myntra_clone/routes.dart';
import 'package:myntra_clone/scrollable_carousal/categories_scrollable.dart';
import 'package:myntra_clone/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

import '../scrollable_carousal/crousels_slider.dart';

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
        // body: ListView(
        //   children: [
        //     Container(
        //         height: 90,
        //         color: Mytheme.creamColor,
        //         child: ListView(
        //           scrollDirection: Axis.horizontal,
        //           children: const [
        //             categoriesscrollable(
        //                 image:
        //                     'assets/images/ali-morshedlou-WMD64tMfc4k-unsplash.jpg',
        //                 name: 'MEN'),
        //             categoriesscrollable(
        //                 image: 'assets/images/women.jpg', name: 'WOMEN'),
        //             categoriesscrollable(
        //                 image: 'assets/images/kids.jpg', name: 'KIDS'),
        //             categoriesscrollable(
        //                 image: 'assets/images/beauty.jpg', name: 'BEAUTY'),
        //             categoriesscrollable(
        //                 image: 'assets/images/footwear.jpg', name: 'FOOTWEAR'),
        //             categoriesscrollable(
        //                 image: 'assets/images/home.jpg', name: 'HOME'),
        //             categoriesscrollable(
        //                 image: 'assets/images/accessories.jpg',
        //                 name: 'ACCESSORIES'),
        //             categoriesscrollable(
        //                 image: 'assets/images/jewellery.jpg',
        //                 name: 'JEWELLERY'),
        //             categoriesscrollable(
        //                 image: 'assets/images/styleast.jpg', name: 'STYLEAST'),
        //             categoriesscrollable(
        //                 image: 'assets/images/luxeary.jpg', name: 'LUXURY'),
        //           ],
        //         )),
        //     Column(
        //       children: [
        //         Container(
        //           height: 280,
        //           color: Mytheme.creamColor,
        //           child: carouselSlider(),
        //         )
        //       ],
        //     ),
        //     Divider(thickness: 3),
        //     "ITEMS YOU HAVE VIEWED"
        //         .text
        //         .bold
        //         .xl2
        //         .make()
        //         .pOnly(left: 11, top: 3),
        //     SizedBox(height: 10),
        //     //items viewed
        //     SingleChildScrollView(
        //       scrollDirection: Axis.horizontal,
        //       child: Row(
        //         children: List.generate(itemsviewed.length, (index) {
        //           return Padding(
        //             padding: const EdgeInsets.only(left: 15),
        //             child: Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 Card(
        //                   elevation: 20,
        //                   child: Container(
        //                     width: 180,
        //                     height: 180,
        //                     child: GestureDetector(
        //                         child: Image.network(
        //                       itemsviewed[index]['url'],
        //                       fit: BoxFit.cover,
        //                     )),
        //                   ),
        //                 ),
        //                 SizedBox(
        //                   height: 5,
        //                 ),
        //                 Container(
        //                   width: 140,
        //                   child: Column(
        //                       crossAxisAlignment: CrossAxisAlignment.start,
        //                       children: [
        //                         Text(
        //                           itemsviewed[index]['title'],
        //                           style: TextStyle(
        //                             fontWeight: FontWeight.bold,
        //                             color: Vx.black,
        //                             height: 1.5,
        //                             fontSize: 15,
        //                           ),
        //                         ),
        //                         SizedBox(
        //                           height: 5,
        //                         ),
        //                         Text(itemsviewed[index]['type']),
        //                         SizedBox(
        //                           height: 5,
        //                         ),
        //                         Text(
        //                           "₹" + itemsviewed[index]['price'],
        //                           style: TextStyle(fontWeight: FontWeight.bold),
        //                         )
        //                       ]),
        //                 )
        //               ],
        //             ),
        //           );
        //         }),
        //       ),
        //     ),
        //     Column(
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.only(top: 40),
        //           child: Container(
        //             width: MediaQuery.of(context).size.width,
        //             color: Mytheme.creamColor,
        //             child: InkWell(
        //               child: Image.network(
        //                 'https://timesofindia.indiatimes.com/thumb/msid-88342892,imgsize-96162,width-400,resizemode-4/88342892.jpg',
        //               ),
        //               onTap: () {},
        //             ),
        //           ),
        //         ),
        //         SizedBox(
        //           height: 8,
        //         ),
        //         "TOP PICKS".text.make(),
        //       ],
        //     )
        //   ],
        // ),
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
