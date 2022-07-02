import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class categoriesscrollable extends StatelessWidget {
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
                  'assets/images/ali-morshedlou-WMD64tMfc4k-unsplash.jpg'),
            ),
          ).pOnly(left: 9),
          "Men".text.make()
        ],
      ),
    );
  }
}
