import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurent_web/utils/constants/app_assets.dart';
import 'package:restaurent_web/utils/constants/app_color.dart';
import 'package:restaurent_web/utils/constants/app_icons.dart';
import 'package:restaurent_web/utils/constants/app_spaces.dart';
import 'package:restaurent_web/utils/constants/app_styles.dart';
import 'package:restaurent_web/utils/widgets/common_text.dart';

class FeedBackScreen extends StatelessWidget {
  const FeedBackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          children: [
            CommonText(text: 'Feedback from customers',
            textStyle: AppStyles.stHeading,),
            Expanded(
              child: Center(
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        CircleAvatar(
                          radius: 120.r,
                          backgroundImage:const AssetImage(AppAssets.dpImage),
                        ),
                    CommonText(text: 'Jon ghasgh',
                    textStyle: AppStyles.st20600,),
                    CommonText(text: 'client',
                    textStyle: AppStyles.specialst20600.copyWith(
                      fontSize: 14.sp,
                      color: AppColor.greytextColor
                    ),),
                      ],
                    ),

                    cm15Width,
            
                     Stack(
                      alignment: Alignment.center,
                      children: [
                       SvgPicture.asset(AppIcons.feedbackSvg,
                       width: 800.w,
                       fit: BoxFit.fill,
                       ),
                       SizedBox(
                         width:450.w,
                         child: CommonText(text: 'Very good productsd sddf',
                         textStyle: AppStyles.st20600,
                         ),
                       )
                      ]
                      
                      )

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}