import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:restaurent_web/modules/home/controller/home_controller.dart';
import 'package:restaurent_web/modules/home/view/screens/home_screen.dart';
import 'package:restaurent_web/modules/services/view/screens/services_screen.dart';
import 'package:restaurent_web/utils/constants/app_color.dart';

import 'modules/dash_view/view/screens/dash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeController(),)
      ],
      child: ScreenUtilInit(
        designSize:const Size(1280, 832),
        builder: (context,child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
              scaffoldBackgroundColor: AppColor.primaryBgColor,
              colorScheme: ColorScheme.fromSeed(seedColor: AppColor.secondoryBgColor),
              useMaterial3: true,
            ),
            
            home: DashScreens(),
          );
        }
      ),
    );
  }
}
