// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class categoriesscrollable extends StatelessWidget {
  final String image;
  final String name;
  const categoriesscrollable({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              radius: 32,
              backgroundImage: AssetImage(
                  image),
            ),
          ).pOnly(left: 9,right: 9,top: 3),
          name.text.textStyle(TextStyle(fontStyle:FontStyle.italic)).make(),
        ],
      ),
    );  
  }
}
