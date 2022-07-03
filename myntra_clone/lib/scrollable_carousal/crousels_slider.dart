import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myntra_clone/routes.dart';

class carouselSlider extends StatelessWidget {
  carouselSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250,
          child: CarouselSlider(
            options: CarouselOptions(
              height: 400,
              aspectRatio: 16 / 9,
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              // onPageChanged: callbackFunction,
              scrollDirection: Axis.horizontal,
            ),
            items: data.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    // margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.grey[300]),
                    // child: Image.network(
                    //   i["url"],
                    //   fit: BoxFit.cover,
                    // )
                    child: GestureDetector(
                      child: Image.network(
                        i['url'],
                        fit: BoxFit.cover,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.loginRoute);
                      },
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),

        //dots
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              height: 8,
              width: 8,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
            ),
            SizedBox(
              width: 3,
            ),
            Container(
              height: 8,
              width: 8,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
            ),
            SizedBox(
              width: 3,
            ),
            Container(
              height: 8,
              width: 8,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
            ),
            SizedBox(
              width: 3,
            ),
            Container(
              height: 8,
              width: 8,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
            ),
            SizedBox(
              width: 3,
            ),
            Container(
              height: 8,
              width: 8,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
            ),
            SizedBox(
              width: 3,
            ),
          ]),
        ),
      ],
    );
  }

//carsoul images
  final List data = [
    {
      "url":
          "https://mir-s3-cdn-cf.behance.net/project_modules/fs/f3299f42054547.57bea3c185f64.png",
    },
    {
      "url":
          "https://mir-s3-cdn-cf.behance.net/project_modules/fs/f3299f42054547.57bea3c185f64.png",
    },
    {
      "url":
          "https://mir-s3-cdn-cf.behance.net/project_modules/fs/f3299f42054547.57bea3c185f64.png",
    },
    {
      "url":
          "https://mir-s3-cdn-cf.behance.net/project_modules/fs/f3299f42054547.57bea3c185f64.png",
    },
    {
      "url":
          "https://mir-s3-cdn-cf.behance.net/project_modules/fs/f3299f42054547.57bea3c185f64.png",
    }
  ];
}
