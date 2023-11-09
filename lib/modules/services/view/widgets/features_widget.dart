import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_icons.dart';
import '../../../../utils/constants/app_styles.dart';
import '../../../../utils/widgets/common_text.dart';

class FeaturesWidget extends StatelessWidget {
  const FeaturesWidget({
    super.key, 
    required this.animDuration, 
    required this.text, 
    required this.image, 
    this.splashDelay,
  });

  final Duration animDuration;
  final Duration? splashDelay;
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
              fit: BoxFit.fill,).animate(delay: splashDelay)
              .scaleXY(
                begin: 0,
                end: 1,
                duration: animDuration,
                curve: Curves.easeInOutCubic),


              Image.asset(image,
              height: 150.h,width: 150.h
              ).animate(delay:splashDelay??0.ms+animDuration)
                .slideY(
                    begin: -20,
                    end: 0,
                    duration: animDuration,
                    curve: Curves.easeInOutCubic)
            ],
          ),

          CommonText(text: text,
          textAlign: TextAlign.center,
                         textStyle: AppStyles.st20600,).
                         animate(delay:splashDelay??0.ms+animDuration*2 )
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