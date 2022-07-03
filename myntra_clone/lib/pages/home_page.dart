// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myntra_clone/drawer.dart';
// import 'package:myntra_clone/routes.dart';
import 'package:myntra_clone/scrollable_carousal/categories_scrollable.dart';
import 'package:myntra_clone/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

import '../scrollable_carousal/crousels_slider.dart';

class homepage extends StatelessWidget {
   homepage({Key? key}) : super(key: key);

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
      body: ListView(
        children: [
          Container(
              height: 90,
              color: Mytheme.creamColor,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  categoriesscrollable(
                      image:
                          'assets/images/ali-morshedlou-WMD64tMfc4k-unsplash.jpg',
                      name: 'MEN'),
                  categoriesscrollable(
                      image: 'assets/images/women.jpg', name: 'WOMEN'),
                  categoriesscrollable(
                      image: 'assets/images/kids.jpg', name: 'KIDS'),
                  categoriesscrollable(
                      image: 'assets/images/beauty.jpg', name: 'BEAUTY'),
                  categoriesscrollable(
                      image: 'assets/images/footwear.jpg', name: 'FOOTWEAR'),
                  categoriesscrollable(
                      image: 'assets/images/home.jpg', name: 'HOME'),
                  categoriesscrollable(
                      image: 'assets/images/accessories.jpg',
                      name: 'ACCESSORIES'),
                  categoriesscrollable(
                      image: 'assets/images/jewellery.jpg', name: 'JEWELLERY'),
                  categoriesscrollable(
                      image: 'assets/images/styleast.jpg', name: 'STYLEAST'),
                  categoriesscrollable(
                      image: 'assets/images/luxeary.jpg', name: 'LUXURY'),
                ],
              )),
          Column(
            children: [
              Container(
                height: 280,
                color: Mytheme.creamColor,
                child: carouselSlider(),
              )
            ],
          ),
          Divider(thickness: 3),
          "ITEMS YOU HAVE VIEWED".text.bold.xl2.make().pOnly(left: 11,top: 3),
          SizedBox(height:10),
          //items viewed
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(itemsviewed.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        elevation: 20,
                        child: Container(
                          width: 180,
                          height: 180,
                          child: GestureDetector(
                            
                              child: Image.network(
                            itemsviewed[index]['url'],
                            fit: BoxFit.cover,
                          )),
                        ),
                      ),
                      SizedBox(height:5 ,),
                      Container(
                        width: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text(itemsviewed[index]['title'],style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Vx.black,
                            height: 1.5,
                            fontSize: 15,
                          ),),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            itemsviewed[index]['type']),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "₹"+itemsviewed[index]['price'],style: TextStyle(fontWeight: FontWeight.bold
                            ),)
                        ]),
                      )
                    ],
                  ),
                );
              }),
            ),
          )
        ],
      ),
      drawer: drawer(),
    );
  }

  final List itemsviewed = [
    {
      "title":'Campus Sutra',
      "price":'399',
      "type":'Shirt',
      "url":
          "https://rukminim1.flixcart.com/image/452/542/kxf0jgw0/shirt/7/k/t/m-mss21eppsh1011c-metronaut-original-imag9vhqagq2hygd.jpeg?q=50",
    },
    {
      "title":'HUETRAP',
      "price":'499',
      "type":'Tshirts',

      "url":
          "https://rukminim1.flixcart.com/image/452/542/l09w8sw0/t-shirt/g/3/j/m-maw21cn033a-metronaut-original-imagc3n9vjyggg4j.jpeg?q=50",
    },
    {
      "title":'ROADSTER',
      "price":'799',
      "type":'Tshirts',
      "url":
          "https://rukminim1.flixcart.com/image/452/542/klphn680hlty2aw/t-shirt/k/e/c/xs-t322-blwh-eyebogler-original-imagyufkkc6ehgmu.jpeg?q=50",
    },
    {
      "title":'HIGHLANDER',
      "price":'299',
      "type":'Tshirts',
      "url":
          "https://rukminim1.flixcart.com/image/452/542/kl5hh8w0hlty2aw/t-shirt/c/l/1/xl-t285hs-as7whdnmt-eyebogler-original-imagyebxus3zu9sd.jpeg?q=50",
    },
    {
      "title":'US POLO',
      "price":'599',
      "type":'Shirts',
      "url":
          "https://rukminim1.flixcart.com/image/452/542/kx50gi80/shirt/x/n/f/-original-imag9nwfk3drmw4k.jpeg?q=50",
    }
  ];
}
