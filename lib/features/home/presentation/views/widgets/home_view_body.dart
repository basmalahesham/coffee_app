import 'package:coffee_flutter_app/features/home/presentation/views/widgets/banner_widget.dart';
import 'package:coffee_flutter_app/features/home/presentation/views/widgets/categories_list_widget.dart';
import 'package:coffee_flutter_app/features/home/presentation/views/widgets/location_and_profile_widget.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 300,
          child: Stack(
            children: [
              LocationAndProfileWidget(),
              Align(alignment: Alignment.bottomCenter, child: BannerWidget()),
            ],
          ),
        ),
        const SizedBox(height: 12),
        const Expanded(child: CategoriesListWidget()),
      ],
    );
  }
}
