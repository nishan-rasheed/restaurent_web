import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurent_web/utils/constants/app_assets.dart';
import 'package:restaurent_web/utils/constants/app_color.dart';
import 'package:restaurent_web/utils/constants/app_spaces.dart';

import '../../../../utils/constants/app_styles.dart';
import '../../../../utils/widgets/common_button.dart';
import '../../../../utils/widgets/common_text.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CommonText(text: 'Our Popular Dishes',
          textStyle: AppStyles.stHeading,),

          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 30.w,);
              },
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 300.w,
                  child: Column(mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppAssets.food2Image,
                      width: 200.w,).animate().flipH(duration: 1000.ms,),
                      CommonText(text: 'Pani Puri',
                      textStyle: AppStyles.st20600,),
                      cm10Height,
                      SizedBox(width: 200.w,
                        child: CommonText(text: 'asfasfasf af asf asfasf as asasf asfasfasf as fasf asf ',
                        textStyle: AppStyles.st12500,),
                      ),
                      cm10Height,
                      RatingBarIndicator(
                        unratedColor: Colors.grey,
                        rating: 2.75,
                        itemBuilder: (context, index) =>
                        const Icon(
                            Icons.star,
                            color: Colors.amber,
                        ),
                        itemCount: 5,
                        itemSize: 30.r,
                        direction: Axis.horizontal,
                    ),
            
                    cm15Height,
                
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CommonText(text: '\$ 34.86',
                          textStyle: AppStyles.st20600,),
            
                          // cm10Width,
                
                          CommonButtonWidget(
                          text:'Add to cart',
                          onTap: () {},
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

