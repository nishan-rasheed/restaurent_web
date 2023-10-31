import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurent_web/utils/constants/app_assets.dart';
import 'package:restaurent_web/utils/constants/app_color.dart';
import 'package:restaurent_web/utils/constants/app_icons.dart';
import 'package:restaurent_web/utils/constants/app_spaces.dart';
import 'package:restaurent_web/utils/constants/app_styles.dart';
import 'package:restaurent_web/utils/constants/common_text.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
   var animDuration=1000.ms;
   var splashDelay=0.ms;
   var imageDelay=0.ms;
   var textDelay=0.ms;


    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CommonText(text: 'What we serve?',
          textStyle: AppStyles.stHeading,),

          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FeaturesWidget(
                animDuration: animDuration,
                image:AppAssets.foodImage ,
                text:'vdhmv dhbdmn dnhdvnb dnvndbd nb dhdb ' ,),
              FeaturesWidget(
                animDuration: animDuration,
                splashDelay: 1000.ms,

                image:AppAssets.offerImage ,
                text:'Spediaj ssmn s nvdmndmn d',),  

               FeaturesWidget(
                animDuration: animDuration,
                image:AppAssets.deliveryImage ,
                text:'fast delivery',),   
              //
             
            ],
          )
        ],
      ),
    );
  }
}

class FeaturesWidget extends StatelessWidget {
  const FeaturesWidget({
    super.key, 
    required this.animDuration, 
    required this.text, 
    required this.image, 
    this.splashDelay, this.imageDelay, this.textDelay,
  });

  final Duration animDuration;
  final Duration? splashDelay;
  final Duration? imageDelay;
  final Duration? textDelay;
  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.w,
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              
           SvgPicture.asset(AppIcons.splashBox,
              width: 300.w,height: 200.h,
              fit: BoxFit.fill,).animate()
              .scaleXY(
                begin: 0,
                end: 1,
                duration: animDuration,
                curve: Curves.easeInOutCubic),


              Image.asset(AppAssets.foodImage,
              height: 150.h,width: 150.h
              ).animate(delay:animDuration+200.ms)
                .slideY(
                    begin: -20,
                    end: 0,
                    duration: animDuration,
                    curve: Curves.easeInOutCubic)
            ],
          ),
          CommonText(text: 'shvnvnsbvs hnbmsnvmsn smbsnm mx mxsnb sbns',
          textAlign: TextAlign.center,
                         textStyle: AppStyles.st20600,).
                         animate(delay:animDuration+1000.ms )
            .slideX(
            begin: 20,
            end: 0,
            duration: 1000.ms,
            curve: Curves.easeInOutCubic)
        ],
      ),
    );
  }
}