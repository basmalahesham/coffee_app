import 'package:coffee_flutter_app/core/helper/space_extension.dart';
import 'package:coffee_flutter_app/core/theming/styles/text_styles.dart';
import 'package:coffee_flutter_app/features/home/presentation/views/widgets/highlighted_text.dart';
import 'package:coffee_flutter_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 140.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(Assets.imagesBanner),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13.0,horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFFED5151),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                child: Text(
                  'Promo',
                  style: TextStyles.sora14W600D8Color.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            19.height,
            HighlightedText(text: 'Buy one get\none FREE'),
          ],
        ),
      ),
    );
  }
}
