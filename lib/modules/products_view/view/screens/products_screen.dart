import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurent_web/utils/constants/app_assets.dart';
import 'package:restaurent_web/utils/constants/app_color.dart';

import '../../../../utils/constants/app_styles.dart';
import '../../../../utils/constants/common_text.dart';

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
            child: SizedBox(width: 1.sw,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(vertical: 80.h),
                shrinkWrap: true,
                physics: ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox();
                },
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 300.w,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Image.asset(AppAssets.food2Image,
                          width: 200.w,),
                        ),
                        CommonText(text: 'Pani Puri',
                        textStyle: AppStyles.st20600,),
                        CommonText(text: 'asfasfasf af asf asfasf as asasf asfasfasf as fasf asf ',
                        textStyle: AppStyles.st12500,),

                        RatingBarIndicator(
                          rating: 2.75,
                          itemBuilder: (context, index) => Icon(
                              Icons.star,
                              color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 50.0,
                          direction: Axis.horizontal,
                      ),

                  
                        Row(
                          children: [
                            CommonText(text: '\$34.86',
                            textStyle: AppStyles.st20600,),
                  
                            Expanded(
                              child: Container(
                                color: AppColor.secondoryBgColor,
                                height: 50.h,
                                child: CommonText(text: 'Add to cart',
                                textStyle: AppStyles.st20600,),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}