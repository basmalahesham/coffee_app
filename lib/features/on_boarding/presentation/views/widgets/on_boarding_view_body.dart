import 'package:coffee_flutter_app/core/extensions/space_extension.dart';
import 'package:coffee_flutter_app/core/theming/styles/text_styles.dart';
import 'package:coffee_flutter_app/core/widgets/custom_elevated_button.dart';
import 'package:coffee_flutter_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 536.h,
          width: double.infinity,
          child: Image.asset(
            Assets.imagesOnboarding,
            alignment: Alignment.topCenter,
            fit: BoxFit.fill,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 360.h,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0x00050505).withOpacity(0.0), Color(0xFF050505)],
                stops: [0.0, 0.2],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
              child: Column(
                children: [
                  Text(
                    'Fall in Love with Coffee in Blissful Delight!',
                    style: TextStyles.sora32W600White,
                    textAlign: TextAlign.center,
                  ),
                  8.height,
                  Text(
                    'Welcome to our cozy coffee corner, where every cup is a delightful for you.',
                    style: TextStyles.sora14W400Gray,
                    textAlign: TextAlign.center,
                  ),
                  32.height,
                  CustomElevatedButton(
                    onPressed: () {},
                    minimumSize: Size(327, 56),
                    text: 'Get Started',
                    style: TextStyles.sora16W600White,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
