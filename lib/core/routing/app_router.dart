import 'package:coffee_flutter_app/core/routing/routes.dart';
import 'package:coffee_flutter_app/features/home_layout/presentation/views/home_layout.dart';
import 'package:coffee_flutter_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingView:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.homeLayout:
        return MaterialPageRoute(builder: (_) => const HomeLayout());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
