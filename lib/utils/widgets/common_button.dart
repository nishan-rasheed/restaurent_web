import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_color.dart';
import '../constants/app_styles.dart';
import 'common_text.dart';

class CommonButtonWidget extends StatelessWidget {
  const CommonButtonWidget({
    super.key, required this.text, required this.onTap,
  });

  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          gradient:const LinearGradient(
            colors: [
              Color.fromARGB(255, 172, 153, 129),
               AppColor.secondoryBgColor,
            ]
            )
        ),
        height: 50.h,width: 200.w,
        child: CommonText(text:text,
        textStyle: AppStyles.st20600,),
      ),
    );
  }
}



// common outlined button   


class CommonOutLineButtonWidget extends StatelessWidget {
  const CommonOutLineButtonWidget({
    super.key, required this.text, required this.onTap,
  });

  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: AppColor.greytextColor)
        ),
        height: 50.h,width: 200.w,
        child: CommonText(text:text,
        textStyle: AppStyles.st20600,),
      ),
    );
  }
}