import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurent_web/utils/constants/app_assets.dart';
import 'package:restaurent_web/utils/constants/app_color.dart';
import 'package:restaurent_web/utils/constants/app_icons.dart';
import 'package:restaurent_web/utils/constants/app_spaces.dart';
import 'package:restaurent_web/utils/constants/app_styles.dart';
import 'package:restaurent_web/utils/widgets/common_text.dart';

import '../widgets/features_widget.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
   var animDuration=800.ms;


    return Scaffold(
      body: Column(
        children: [
          CommonText(text: 'What we serve?',
          textStyle: AppStyles.stHeading,),

          Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FeaturesWidget(
                  animDuration: animDuration,
                  splashDelay: 0.ms,
                  image:AppAssets.foodImage ,
                  text:'vdhmv dhbdmn dnhdvnb dnvndbd nb dhdb ' ,),
                FeaturesWidget(
                  animDuration: animDuration,
                  splashDelay:1000.ms,
                  image:AppAssets.offerImage ,
                  text:'Spediaj ssmn s nvdmndmn d',),  
                    
                 FeaturesWidget(
                  animDuration: animDuration,
                  splashDelay:2000.ms,
                  image:AppAssets.deliveryImage ,
                  text:'fast delivery',),   
                //
               
              ],
            ),
          )
        ],
      ),
    );
  }
}

