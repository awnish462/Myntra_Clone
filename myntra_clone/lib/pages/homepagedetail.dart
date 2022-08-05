import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myntra_clone/Components/toppicks.dart';
import 'package:myntra_clone/firebase_options.dart';
import 'package:myntra_clone/scrollable_carousal/carouselbelowitemviewed.dart';
import 'package:myntra_clone/scrollable_carousal/categories_scrollable.dart';
import 'package:myntra_clone/scrollable_carousal/crousels_slider.dart';
import 'package:myntra_clone/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class Homedetailpage extends StatelessWidget {
  Homedetailpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  var size = MediaQuery.of(context).size;

    // /*24 is for notification bar on Android*/
    // final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    // final double itemWidth = size.width / 2;
    //   return ListView(
    //     children: [
    //       Container(
    //           height: 90,
    //           color: Colors.white,
    //           child: ListView(
    //             scrollDirection: Axis.horizontal,
    //             children: const [
    //               categoriesscrollable(
    //                   image:
    //                       'assets/images/ali-morshedlou-WMD64tMfc4k-unsplash.jpg',
    //                   name: 'MEN'),
    //               categoriesscrollable(
    //                   image: 'assets/images/women.jpg', name: 'WOMEN'),
    //               categoriesscrollable(
    //                   image: 'assets/images/kids.jpg', name: 'KIDS'),
    //               categoriesscrollable(
    //                   image: 'assets/images/beauty.jpg', name: 'BEAUTY'),
    //               categoriesscrollable(
    //                   image: 'assets/images/footwear.jpg', name: 'FOOTWEAR'),
    //               categoriesscrollable(
    //                   image: 'assets/images/home.jpg', name: 'HOME'),
    //               categoriesscrollable(
    //                   image: 'assets/images/accessories.jpg',
    //                   name: 'ACCESSORIES'),
    //               categoriesscrollable(
    //                   image: 'assets/images/jewellery.jpg', name: 'JEWELLERY'),
    //               categoriesscrollable(
    //                   image: 'assets/images/styleast.jpg', name: 'STYLEAST'),
    //               categoriesscrollable(
    //                   image: 'assets/images/luxeary.jpg', name: 'LUXURY'),
    //             ],
    //           )),
    //       Column(
    //         children: [
    //           Container(
    //             height: 280,
    //             color: Mytheme.creamColor,
    //             child: carouselSlider(),
    //           )
    //         ],
    //       ),
    //       Divider(thickness: 3),
    //       "ITEMS YOU HAVE VIEWED".text.bold.xl2.make().pOnly(left: 11, top: 3),
    //       SizedBox(height: 10),
    //       //items viewed
    //       SingleChildScrollView(
    //         scrollDirection: Axis.horizontal,
    //         child: Row(
    //           children: List.generate(itemsviewed.length, (index) {
    //             return Padding(
    //               padding: const EdgeInsets.only(left: 15),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Card(
    //                     elevation: 20,
    //                     child: Container(
    //                       width: 180,
    //                       height: 180,
    //                       child: GestureDetector(
    //                           child: Image.network(
    //                         itemsviewed[index]['url'],
    //                         fit: BoxFit.cover,
    //                       )),
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     height: 5,
    //                   ),
    //                   Container(
    //                     width: 140,
    //                     child: Column(
    //                         crossAxisAlignment: CrossAxisAlignment.start,
    //                         children: [
    //                           Padding(
    //                             padding: const EdgeInsets.only(top:8,left: 8),
    //                             child: Text(
    //                               itemsviewed[index]['title'],
    //                               style: TextStyle(
    //                                 fontWeight: FontWeight.bold,
    //                                 color: Color.fromARGB(255, 37, 36, 36),
    //                                 height: 1.5,
    //                                 fontSize: 18,
    //                               ),
    //                             ),
    //                           ),
    //                           SizedBox(
    //                             height: 5,
    //                           ),
    //                           Padding(
    //                             padding: const EdgeInsets.only(left: 8),
    //                             child: Text(itemsviewed[index]['type']),
    //                           ),
    //                           SizedBox(
    //                             height: 5,
    //                           ),
    //                           Padding(
    //                             padding: const EdgeInsets.only(left: 8),
    //                             child: Text(
    //                               "₹" + itemsviewed[index]['price'],
    //                               style: TextStyle(fontWeight: FontWeight.bold),
    //                             ),
    //                           ),
    //                         ]),
    //                   )
    //                 ],
    //               ),
    //             );
    //           }),
    //         ),
    //       ),
    //       SizedBox(height: 40,),
    //       Column(
    //         children: [
    //           Container(
    //             height: 280,
    //             color: Mytheme.creamColor,
    //             child: carosoulbelowitemviewed(),
    //           )
    //         ],
    //       ),
    //       Padding(
    //         padding: EdgeInsets.zero,
    //         child: Divider(thickness: 4,color: Colors.grey.shade200),
    //       ),
    //        Padding(
    //         padding: EdgeInsets.zero,
    //         child: Divider(thickness: 4,color: Colors.grey.shade200,),
    //       ),
    //       "TOP PICKS OF THE SEASON".text.semiBold.xl.make().pOnly(top: 15,left: 10),
    //       Container(
    //         height: 300,
    //         child: topPicks()),

    //     ],
    //   );
    // }

    // final List itemsviewed = [

    //   {
    //     "title": 'Campus Sutra',
    //     "price": '399',
    //     "type": 'Shirt',
    //     "url":
    //         "https://rukminim1.flixcart.com/image/452/542/kxf0jgw0/shirt/7/k/t/m-mss21eppsh1011c-metronaut-original-imag9vhqagq2hygd.jpeg?q=50",
    //   },
    //   {
    //     "title": 'HUETRAP',
    //     "price": '499',
    //     "type": 'Tshirts',
    //     "url":
    //         "https://rukminim1.flixcart.com/image/452/542/l09w8sw0/t-shirt/g/3/j/m-maw21cn033a-metronaut-original-imagc3n9vjyggg4j.jpeg?q=50",
    //   },
    //   {
    //     "title": 'ROADSTER',
    //     "price": '799',
    //     "type": 'Tshirts',
    //     "url":
    //         "https://rukminim1.flixcart.com/image/452/542/klphn680hlty2aw/t-shirt/k/e/c/xs-t322-blwh-eyebogler-original-imagyufkkc6ehgmu.jpeg?q=50",
    //   },
    //   {
    //     "title": 'HIGHLANDER',
    //     "price": '299',
    //     "type": 'Tshirts',
    //     "url":
    //         "https://rukminim1.flixcart.com/image/452/542/kl5hh8w0hlty2aw/t-shirt/c/l/1/xl-t285hs-as7whdnmt-eyebogler-original-imagyebxus3zu9sd.jpeg?q=50",
    //   },
    //   {
    //     "title": 'US POLO',
    //     "price": '599',
    //     "type": 'Shirts',
    //     "url":
    //         "https://rukminim1.flixcart.com/image/452/542/kx50gi80/shirt/x/n/f/-original-imag9nwfk3drmw4k.jpeg?q=50",
    //   }
    // ];

    return Scaffold(
      // appBar: AppBar(title: Text('Myntra clone')),
      body: FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        //loading screen while loading
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              final user = FirebaseAuth.instance.currentUser;
              // final emailVerified = user?.emailVerified ?? false;
              if (user?.emailVerified ?? false) {
                print('email verified');
              } else {
                print('You need to verify your email');
              }
              return Text('Done');

            default:
              return Text('Loading...');
          }
        },
      ),
    );
  }
}
