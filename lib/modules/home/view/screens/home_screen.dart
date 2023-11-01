import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurent_web/utils/constants/app_assets.dart';
import 'package:restaurent_web/utils/constants/app_spaces.dart';
import 'package:restaurent_web/utils/constants/app_styles.dart';
import 'package:restaurent_web/utils/constants/common_text.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key, this.controller}) : super(key: key);

  final PageController? controller;

  String longText = 'xbnxnm smhmvs sgvsxvs mhmvs sgvsxvs sxvsnbsvbnxsnv sxvnsbnsbxs bn bsvxsnbsnbvsxvskhgx xvbxvbsxnm svsmnbsxbs sxnbsxnbsxnb s sx sbnbsn  sx snb snxb sxb sxn sxmsgsh shg sghs s sghxs sxvsnbsvbnxsnv sxvnsbnsbxs bn bsvxsnbsnbvsxvskhgx xvbxvbsxnm svsmnbsxbs sxnbsxnbsxnb s sx sbnbsn  sx snb snxb sxb sxn sxmsgsh shg sghs s sghxsgxhsxhsxs hgs  sgxhsxhgshg sx sxgh ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Container(

        padding:  EdgeInsets.symmetric(horizontal: 50.w,vertical: 50.h),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.backgroundImage),
          fit: BoxFit.cover
          )
        ),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                  controller?.animateToPage(1, duration:const Duration(milliseconds: 600), curve: Curves.easeIn);
                  },
                  child: CommonText(text: 'Home',
                  textStyle: AppStyles.st12500,),
                ),
                CommonText(text: 'Services',
                textStyle: AppStyles.st12500,),
                CommonText(text: 'Dishes',
                textStyle: AppStyles.st12500,),
                CommonText(text: 'Feedbacks',
                textStyle: AppStyles.st12500,),
              ],
            ),

            cm30Height,
      
            Expanded(
              child: Row(
                children: [
                 Expanded(
                   child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       CommonText(text: 'HOTEL NAME ',
                        textStyle: AppStyles.stHeading,).animate().scale(delay: const Duration(seconds: 3),duration:const Duration(seconds: 3,),
                        curve: Curves.elasticOut),
                       
                       CommonText(text: 'Taste the difference\nwith us.',
                        textStyle: AppStyles.stHeading,) .animate().fade(
                        duration:const Duration(seconds: 3)),
                   
                       CommonText(text: longText,
                       textStyle: AppStyles.st12500,)
                     ],
                   ),
                 ),
                  
                 
                 Image.asset(AppAssets.foodImage,
                 height: 600.h,width: 600.h,
                 ).animate().rotate(
                  curve: Curves.decelerate,
                  duration: Duration(seconds: 10)
                  ),
                  
                ],
              ),
            )
      
          ],
        ),
      ),
    );
  }
}