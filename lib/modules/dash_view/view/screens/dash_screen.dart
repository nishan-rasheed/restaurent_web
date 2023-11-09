import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurent_web/modules/feedback/view/screens/feedback_screen.dart';
import 'package:restaurent_web/modules/home/view/screens/home_screen.dart';
import 'package:restaurent_web/modules/products_view/view/screens/products_screen.dart';
import 'package:restaurent_web/modules/services/view/screens/services_screen.dart';

class DashScreens extends StatelessWidget {
   DashScreens({Key? key}) : super(key: key);

  PageController pageController = PageController();
  bool pageIsScrolling = false;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
      Listener(
        onPointerMove: (pointerMove) {
                  _onScroll(pointerMove.delta.dy * -1);
                  print(pointerMove.delta.dy);
                },
                onPointerSignal: (pointerSignal) {
                  if (pointerSignal is PointerScrollEvent) {
                    _onScroll(pointerSignal.scrollDelta.dy);
                    print(pointerSignal.scrollDelta.dy);
                  }
                },
        child: PageView(
        physics:const NeverScrollableScrollPhysics(),
          controller: pageController,
          scrollDirection: Axis.vertical,
          children: [
            HomeScreen(controller: pageController,),
            const ServicesScreen(),
            const ProductScreen(),
            const FeedBackScreen(),
          ],
        ),
      )
    );
  }

  
 void _onScroll(double offset) {
    if (pageIsScrolling == false) {
      pageIsScrolling = true;
      if (offset > 0) {
        pageController
            .nextPage(
                duration:const Duration(milliseconds: 300),
                curve: Curves.easeInOut)
            .then((value) => pageIsScrolling = false);

        print('scroll down');
      } else {
        pageController
            .previousPage(
                duration:const Duration(milliseconds: 300),
                curve: Curves.easeInOut)
            .then((value) => pageIsScrolling = false);
        print('scroll up');
      }
    }
  }

}