// import 'dart:html';

// import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:myntra_clone/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class carouseldetail extends StatelessWidget {
  const carouseldetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ),
        toolbarHeight: 50,
        title: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "MEN TOPWEAR",
                style: TextStyle(color: Colors.black, fontSize: 16.0),
              ),
              Text(
                "30456 items",
                style: TextStyle(color: Colors.black, fontSize: 14.0),
              )
            ],
          ),
        ),
        titleTextStyle: TextStyle(color: Colors.black),
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
          child: GridView.count(
        // Create a grid with 2
        //columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // padding: EdgeInsets.all(4),
        // childAspectRatio: 5/7,
        childAspectRatio: (itemWidth / itemHeight),
        // Generate 100 widgets that display their index in the List.
        children: List.generate(100, (index) {
          return Card(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.grey.shade300,
              ),
              // borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.zero,
            child: Column(
              children: [
                Stack(
                  children: [
                    // Ink.image(image:
                    // AssetImage('assets/images/women.jpg')),
                    Image.network(
                        'https://rukminim1.flixcart.com/image/452/542/l4vnbm80/t-shirt/i/j/q/m-askporgfj72665-new-allen-solly-original-imagfzk8vjxgurcj.jpeg?q=50'),
                        // Container(
                        //   height:20,
                        //   width: 90,
                        //   decoration: BoxDecoration(
                        //     color: Colors.white,
                        //     borderRadius: BorderRadius.circular(10),
                        //   ),
                        //   child: Padding(
                        //     padding: const EdgeInsets.only(bottom: 5),
                        //     child: Row(
                        //       children: [
                        //         Container(
                        //           child: '4.2'.text.make(),
                        //         ),
                        //         Container(
                        //           padding: EdgeInsets.only(bottom: 10),
                        //           child: IconButton(onPressed: (){}, icon: Icon(Icons.star)),

                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // )
                  ],
                ),
                // Container(
                  
                //   child: Row(
                //     children: [
                      
                //       Text('HRX by Hrithik Rosh..',style: TextStyle(fontSize: 16,fontStyle: FontStyle.normal,fontWeight: FontWeight.w500),),
                //       // "HRX by Hrithik Roshan".text.bold.make(),
                //       IconButton(onPressed: (){}, icon: Icon(Icons.favorite_rounded),color: Colors.grey,),
                //     ],
                //      Text('Raglan Sleeved T-shirt')
                //   ),
                // )
                
                
                "HRX by Hrithik Roshan".text.xl.bold.make(),
                'Raglan Sleeved T-shirt'.text.color(Colors.grey).make(),
                '₹584'.text.make(),
              ],
            ),
          );
        }),
      )),
    );
  }

  // Container(
  //   color: Mytheme.creamColor,
  //   child: ListView(
  //     children: [
  //       Container(
  //         child: Card(
  //           color: Colors.white,
  //         ),
  //       )
  //     ],
  //   ),
  // );
}
