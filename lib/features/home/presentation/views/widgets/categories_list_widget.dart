import 'package:coffee_flutter_app/core/helper/space_extension.dart';
import 'package:coffee_flutter_app/core/theming/colors.dart';
import 'package:coffee_flutter_app/core/theming/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesListWidget extends StatefulWidget {
  const CategoriesListWidget({super.key});

  @override
  State<CategoriesListWidget> createState() => _CategoriesListWidgetState();
}

class _CategoriesListWidgetState extends State<CategoriesListWidget> {
  int selectedIndex = 0;

  final List<String> categories = const [
    "All Coffee",
    "Machiato",
    "Latte",
    "Americano",
  ];

  final List<Widget> screenWidgets = [
    SliverToBoxAdapter(
      child: Center(child: Column(children: [Text('All Coffee')])),
    ),
    SliverToBoxAdapter(child: Center(child: Text('Machiato'))),
    SliverToBoxAdapter(child: Center(child: Text('Latte'))),
    SliverToBoxAdapter(child: Center(child: Text('Americano'))),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 40.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final isSelected = selectedIndex == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      width: 87,
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 4.h,
                      ),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? ColorsManager.kPrimaryColor
                            : Color(0xFFEDEDED).withOpacity(.35),
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      child: Center(
                        child: Text(
                          categories[index],
                          style: TextStyles.sora14W600D8Color.copyWith(
                            color: isSelected
                                ? Colors.white
                                : Color(0xFF313131),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => 24.width,
              ),
            ),
          ),
          screenWidgets[selectedIndex],
        ],
      ),
    );
  }
}
