import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myntra_clone/routes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class carosoulbelowitemviewed extends StatefulWidget {
  carosoulbelowitemviewed({Key? key}) : super(key: key);

  @override
  State<carosoulbelowitemviewed> createState() =>
      _carosoulbelowitemviewedState();
}

class _carosoulbelowitemviewedState extends State<carosoulbelowitemviewed> {
  int activeindex = 0;
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
                onPageChanged: (index, reason) {
                  
                  setState(() => activeindex = index);
                },
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
                        onTap: () {},
                      ),
                    );
                  },
                );
              }).toList()),
        ),
        // SizedBox(height: 22),
        Padding(
          padding: const EdgeInsets.only(top:10 ),
          child: buildIndicator(),
        ),
      ],
    );
  }

   buildIndicator() => AnimatedSmoothIndicator(activeIndex:activeindex,
  count:data.length,
   effect:  SlideEffect(  
      radius:  10.0,  
      dotWidth:  10.0,  
      dotHeight:  10.0,  
      // paintStyle:  PaintingStyle.stroke,  
      // strokeWidth:  1.5,  
      dotColor:  Colors.grey,  
      activeDotColor:  Colors.indigo  
   ),  
  );

//carsoul images
  final List data = [
    {
      "url":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQey986csMqdFd1U1fnzu_FTMPGdYA_CNw9UQ&usqp=CAU",
    },
    {
      "url":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQdBw6zlLC_vVszMok1sjatPKxGVx1qIDjqA&usqp=CAU",
    },
    {
      "url":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-LVy-nB3f0V5oJZRCdDVYUEHFTz3n6MdnWg&usqp=CAU",
    },
    // {
    //   "url":
    //       "https://mir-s3-cdn-cf.behance.net/project_modules/fs/f3299f42054547.57bea3c185f64.png",
    // },
    // {
    //   "url":
    //       "https://mir-s3-cdn-cf.behance.net/project_modules/fs/f3299f42054547.57bea3c185f64.png",
    // }
  ];
}
