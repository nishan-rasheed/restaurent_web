import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurent_web/utils/constants/app_assets.dart';
import 'package:restaurent_web/utils/constants/app_icons.dart';
import 'package:restaurent_web/utils/constants/app_styles.dart';
import 'package:restaurent_web/utils/constants/common_text.dart';

class FeedBackScreen extends StatelessWidget {
  const FeedBackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CommonText(text: 'Feedback from customers',
          textStyle: AppStyles.stHeading,),
          Expanded(
            child: Center(
              child: Row(
                children: [
                  Image.asset(AppAssets.dpImage,
                  height: 150.h,width: 150.h,
                  fit: BoxFit.cover,
                  ),

                  SvgPicture.asset(AppIcons.splashBox)
                ],
              ),
            ))
        ],
      ),
    );
  }
}