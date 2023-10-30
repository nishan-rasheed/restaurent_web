import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurent_web/utils/constants/app_color.dart';

class AppStyles{

 //heading

 static  TextStyle  stHeading = GoogleFonts.loveYaLikeASister(
  color: AppColor.textColor,
  fontSize: 60.sp,
  fontWeight: FontWeight.w500,
 );  


//12-500

 static  TextStyle  st12500 = TextStyle(
  color: AppColor.textColor,
  fontSize: 12.sp,
  fontWeight: FontWeight.w500,
 );


 //20-600

 static  TextStyle  st20600 = TextStyle(
  color: AppColor.textColor,
  fontSize: 20.sp,
  fontWeight: FontWeight.w600,
 );


}