import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurent_web/modules/home/view/screens/home_screen.dart';
import 'package:restaurent_web/modules/products_view/view/screens/products_screen.dart';
import 'package:restaurent_web/modules/services/view/screens/services_screen.dart';

class DashScreens extends StatelessWidget {
   DashScreens({Key? key}) : super(key: key);

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final maxHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body:
      PageView(
        // physics: const CustomPageViewScrollPhysics(),
        // pageSnapping: false,
        controller: pageController,
        // allowImplicitScrolling: true,
        scrollDirection: Axis.vertical,
        children: [
          HomeScreen(controller: pageController,),
          const ServicesScreen(),
          ProductScreen(),
          Container(height: maxHeight,width: maxWidth,color: Colors.teal,),
        ],
      )
    );
  }
}

class CustomPageViewScrollPhysics extends ScrollPhysics {
  const CustomPageViewScrollPhysics({ScrollPhysics? parent})
      : super(parent: parent);

  @override
  CustomPageViewScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return CustomPageViewScrollPhysics(parent: buildParent(ancestor));
  }

  @override
  SpringDescription get spring => const SpringDescription(
        mass: 80,
        stiffness: 100,
        damping: 1,
      );
}
