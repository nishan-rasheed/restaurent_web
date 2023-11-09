import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurent_web/utils/constants/app_assets.dart';
import 'package:restaurent_web/utils/constants/app_color.dart';
import 'package:restaurent_web/utils/constants/app_spaces.dart';
import 'package:restaurent_web/utils/constants/app_styles.dart';
import 'package:restaurent_web/utils/widgets/common_text.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../utils/widgets/common_button.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key, this.controller}) : super(key: key);

  final PageController? controller;

  String longText = 'xbnxnm smhmvs sgvsxvs mhmvs sgvsxvs sxvsnbsvbnxsnv sxvnsbnsbxs bn bsvxsnbsnbvsxvskhgx xvbxvbsxnm svsmnbsxbs sxnbsxnbsxnb s sx sbnbsn  sx snb snxb sxb sxn sxmsgsh shg sghs s sghxs sxvsnbsvbnxsnv sxvnsbnsbxs bn bsvxsnbsnbvsxvskhgx xvbxvbsxnm svsmnbsxbs sxnbsxnbsxnb s sx sbnbsn  sx snb snxb sxb sxn sxmsgsh shg sghs s sghxsgxhsxhsxs hgs  sgxhsxhgshg sx sxgh ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:  EdgeInsets.symmetric(horizontal: 50.w,vertical: 50.h),
        decoration:
        1.sw<768?
        const BoxDecoration(
          color: AppColor.primaryBgColor
        ):
        const BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.backgroundImage),
          fit: BoxFit.cover
          )
        ),
        child: Column(
          children: [
            1.sw<768?
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(),
                IconButton(
                onPressed: () {}, 
                icon:const Icon(Icons.menu))
              ],
            ):
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                  controller?.animateToPage(1, duration:const Duration(milliseconds: 600), curve: Curves.easeIn);
                  },
                  child: CommonText(text: 'Home',
                  textStyle: AppStyles.st12500,),
                ),
                InkWell(
                  onTap: () {
                  controller?.animateToPage(1, duration:const Duration(milliseconds: 600), curve: Curves.easeIn);
                  },
                  child: CommonText(text: 'Services',
                  textStyle: AppStyles.st12500,),
                ),
                InkWell(
                  onTap: () {
                    controller?.animateToPage(2, duration:const Duration(milliseconds: 600), curve: Curves.easeIn);
                  },
                  child: CommonText(text: 'Dishes',
                  textStyle: AppStyles.st12500,),
                ),
                CommonText(text: 'Feedbacks',
                textStyle: AppStyles.st12500,),
              ],
            ),

            cm30Height,
      
            Expanded(
              child: 
              1.sw<768?Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(AppAssets.foodImage,
                 height: 200.w,width: 200.w,
                 ).animate().rotate(
                  curve: Curves.decelerate,
                  duration:const Duration(seconds: 10)
                  ), 
                
                CommonText(text: 'HOTEL NAME ',
                  textStyle: AppStyles.stHeading,),

                CommonText(text: 'Taste the difference\nwith us.',
                        textStyle: AppStyles.stHeading,),

                SizedBox(
                  child: CommonText(text: longText,
                  maxlines: 4,
                  textStyle: AppStyles.st12500,),
                ),  
                
                CommonOutLineButtonWidget(
                            text: 'Book a Table', 
                            onTap: () {
                              
                            },) ,

                CommonButtonWidget(
                  text: 'About us', 
                  onTap: () {
                    
                  },)      
                ],
              ):
              Row(
                children: [
                 Expanded(
                   child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [

                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         CommonText(text: 'HOTEL NAME ',
                        textStyle: AppStyles.stHeading,),

                        cm15Height,
                       
                       CommonText(text: 'Taste the difference\nwith us.',
                        textStyle: AppStyles.stHeading,),

                        cm15Height,
                                       
                       SizedBox(width: 400.w,
                         child: CommonText(text: longText,
                         textStyle: AppStyles.st12500,),
                       ),
                        ],
                      ),
                       

                      Row(
                        children: [
                          CommonButtonWidget(
                              text:'About Us',
                              onTap: () {},
                              ),
                          cm10Width,    
                          CommonOutLineButtonWidget(
                            text: 'Book a Table', 
                            onTap: () {
                              
                            },)    
                        ],
                      )
                     ],
                   ),
                 ),
                  
                 
                 Image.asset(AppAssets.foodImage,
                 height: 600.h,width: 600.w,
                 ).animate().rotate(
                  curve: Curves.decelerate,
                  duration:const Duration(seconds: 10)
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