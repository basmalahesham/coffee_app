import 'package:coffee_flutter_app/core/helper/space_extension.dart';
import 'package:coffee_flutter_app/core/theming/colors.dart';
import 'package:coffee_flutter_app/core/theming/styles/text_styles.dart';
import 'package:coffee_flutter_app/core/widgets/custom_text_form_field.dart';
import 'package:coffee_flutter_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationAndProfileWidget extends StatelessWidget {
  LocationAndProfileWidget({super.key});
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 280.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF111111), Color(0xFF313131)],
          stops: [0, 1],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Location', style: TextStyles.sora12W400Gray),
            8.height,
            Row(
              children: [
                Text(
                  'Bilzen, Tanjungbalai',
                  style: TextStyles.sora14W600D8Color,
                ),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  size: 14,
                  color: ColorsManager.kD8Color,
                ),
              ],
            ),
            24.height,
            Form(
              key: formKey,
              child: Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      hintText: 'Search coffee',
                      hintStyle: TextStyles.sora14W400Gray,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(14),
                        child: ImageIcon(
                          AssetImage(Assets.imagesSearch),
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                      fillColor: Color(0xFF2A2A2A),
                      filled: true,
                      validator: (value) {},
                    ),
                  ),
                  16.width,
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: ColorsManager.kPrimaryColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ImageIcon(AssetImage(Assets.imagesIcon),color: Colors.white,),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
