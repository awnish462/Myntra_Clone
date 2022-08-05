import 'package:flutter/material.dart';
import 'package:myntra_clone/pages/carouselsliderdetail.dart';
import 'package:myntra_clone/pages/home_page.dart';
import 'package:myntra_clone/pages/login.dart';
import 'package:myntra_clone/pages/register.dart';
import 'package:myntra_clone/routes.dart';
// import 'package:myntra_clone/scrollable_carousal/carouselbelowitemviewed.dart';
import 'package:myntra_clone/widgets/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: Mytheme.lightTheme(),
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => homepage(),
          MyRoutes.loginRoute: ((context) => LogInPage()),
          MyRoutes.registerRoute:((context) => Registerpage()),
          MyRoutes.carouseldetailRoute:(context) => carouseldetail()
        });
  }
}
