import 'package:flutter/material.dart';
import 'package:myntra_clone/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class loginpage extends StatelessWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: "login page".text.make().centered(),
      color: Mytheme.creamColor,
    );
  }
}
