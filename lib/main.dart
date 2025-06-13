import 'package:coffee_flutter_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  runApp(
    ScreenUtilInit(
      builder: (context, child) => DevicePreview(
        enabled: false,
        builder: (context) => const MyApp(), // updated here
      ),
      designSize: const Size(375,812),
      minTextAdapt: true,
      splitScreenMode: true,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const OnBoardingView(),
    );
  }
}
