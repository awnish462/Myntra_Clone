// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myntra_clone/drawer.dart';
import 'package:myntra_clone/routes.dart';
import 'package:myntra_clone/scrollable_carousal/categories_scrollable.dart';
import 'package:myntra_clone/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Container(
        height: 80,
        color: Mytheme.creamColor,
        child:ListView(
          scrollDirection: Axis.horizontal,
          children: [
            categoriesscrollable(),
            categoriesscrollable(),
            categoriesscrollable(),
            categoriesscrollable(),
            categoriesscrollable(),
            //   Container(
            //   child: Column(
            //     children: [
            //       GestureDetector(
            //         onTap: (){},
            //         child: CircleAvatar(
            //           radius: 32,
            //           backgroundImage: AssetImage('assets/images/ali-morshedlou-WMD64tMfc4k-unsplash.jpg'),
            //         ),
            //       ).pOnly(left: 9),
            //       "Men".text.make(),   
            //     ],
            //   ),
            //  ), 

            //   Container(
            //   child: Column(
            //     children: [
            //       GestureDetector(
            //         onTap: (){},
            //         child: CircleAvatar(
            //           radius: 32,
            //           backgroundImage: AssetImage('assets/images/ali-morshedlou-WMD64tMfc4k-unsplash.jpg'),
            //         ),
            //       ).pOnly(left: 9),
            //       "Men".text.make(),   
            //     ],
            //   ),
            //  ),       
                 
          ],

          
          
        )
      ),

        // body: Container(
        //   height: 80,
        //   color: Mytheme.creamColor,
        //   child: Expanded(
        //     child: ListView(
        //       scrollDirection: Axis.horizontal,
        //       children: [
        //         GestureDetector(
        //           onTap: () {
        //             Navigator.pushNamed(context, MyRoutes.loginRoute);
        //           },
        //           child: CircleAvatar(
        //               radius: 50,
        //               backgroundImage: AssetImage(
        //                   'assets/images/ali-morshedlou-WMD64tMfc4k-unsplash.jpg')
        //               // child: Image.asset('assets/images/ali-morshedlou-WMD64tMfc4k-unsplash.jpg',
        //               ),

        //         ),
        //          "Men".text.make(),

        //       ],
        //     ),
      drawer: drawer(),
    );
  }
}
