import 'package:coffee_flutter_app/features/home/presentation/views/widgets/location_and_profile_widget.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LocationAndProfileWidget(),
      ],
    );
  }
}

