import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurent_web/utils/constants/app_assets.dart';
import 'package:restaurent_web/utils/constants/app_color.dart';
import 'package:restaurent_web/utils/constants/app_spaces.dart';
import 'package:restaurent_web/utils/constants/app_styles.dart';
import 'package:restaurent_web/utils/constants/common_text.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
   int backGroundAnimDelay=1000;
   int backGroundAnimDuration =1000;
   int imageAnimDuration =100;
   int imageAnimDelay =1100;
   int textAnimDelay =1500;


    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CommonText(text: 'What we serve?',
          textStyle: AppStyles.stHeading,),

          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    height: 220.h,width: 150.w,
                    color: AppColor.secondoryBgColor,
                    child: Image.asset(AppAssets.foodImage)
                    .animate().slide(delay: Duration(milliseconds: imageAnimDelay),duration:Duration(milliseconds: imageAnimDuration)),
                  ).animate().fadeIn(delay: Duration(milliseconds: backGroundAnimDelay),duration:Duration(milliseconds: backGroundAnimDuration),curve: Curves.ease,),
                 
                 cm10Height,
                 
                  CommonText(text: 'Fresh-Healthy food',
                  textStyle: AppStyles.st20600,).animate().fadeIn(delay: Duration(milliseconds: textAnimDelay),curve: Curves.ease,),

                  CommonText(text: 'Fdhjed ehdgvhgd',
                  textAlign: TextAlign.center,
                  textStyle: AppStyles.st12500,).animate().fadeIn(delay:Duration(milliseconds: textAnimDelay),curve: Curves.ease,),
                ],
              ),
              //
             Column(
                children: [
                  Container(
                    height: 220.h,width: 150.w,
                    color: AppColor.secondoryBgColor,
                    child: Image.asset(AppAssets.offerImage)
                    .animate().slide(delay: Duration(milliseconds: imageAnimDelay+1000),duration:Duration(milliseconds: imageAnimDuration)),
                  ).animate().fadeIn(delay: Duration(milliseconds: backGroundAnimDelay+1000),duration:Duration(milliseconds: backGroundAnimDuration+1000),curve: Curves.ease,),

                   cm10Height,
                  CommonText(text: 'Best Discount',
                  textStyle: AppStyles.st20600,).animate().fadeIn(delay: Duration(milliseconds: textAnimDelay+1000),curve: Curves.ease,),

                  CommonText(text: 'Fdhjed ehdgvhgd',
                  textAlign: TextAlign.center,
                  textStyle: AppStyles.st12500,).animate().fadeIn(delay:Duration(milliseconds: textAnimDelay+1000),curve: Curves.ease,),
                ],
              ),
              

              //
             Column(
                children: [
                  Container(
                    height: 220.h,width: 150.w,
                    color: AppColor.secondoryBgColor,
                    child: Image.asset(AppAssets.deliveryImage)
                    .animate().slide(delay: Duration(milliseconds: imageAnimDelay+2000),duration:Duration(milliseconds: imageAnimDuration)),
                  ).animate().fadeIn(delay: Duration(milliseconds: backGroundAnimDelay+2000),duration:Duration(milliseconds: backGroundAnimDuration+2000),curve: Curves.ease,),

                  cm10Height,
                   
                  CommonText(text: 'Fast delivery',
                  textStyle: AppStyles.st20600,).animate().fadeIn(delay: Duration(milliseconds: textAnimDelay+2000),curve: Curves.ease,),

                  CommonText(text: 'Fdhjed ehdgvhgd',
                  textAlign: TextAlign.center,
                  textStyle: AppStyles.st12500,).animate().fadeIn(delay:Duration(milliseconds: textAnimDelay+2000),curve: Curves.ease,),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}