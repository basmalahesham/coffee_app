import 'package:coffee_flutter_app/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';

void main() async {
  runApp(
    ScreenUtilInit(
      builder: (context, child) => MyApp(appRouter: AppRouter()),
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.onBoardingView,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
