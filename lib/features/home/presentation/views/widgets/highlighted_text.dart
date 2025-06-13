import 'package:coffee_flutter_app/core/theming/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HighlightedText extends StatelessWidget {
  final String text;

  const HighlightedText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    // Split the text into lines
    final lines = text.split('\n');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: lines.map((line) {
        return Stack(
          clipBehavior: Clip.none, // <-- ده بيخلي النص يطلع برا ويبان

          children: [
            // Background highlight
            Container(
              height: 20,
              margin: EdgeInsets.only(bottom: 10.h),
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black87, Colors.black],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Text(
                line,
                style: TextStyles.sora32W600White.copyWith(
                  color: Colors.transparent,
                ),
              ),
            ),
            // Foreground text
            Positioned(
              top: -14.h, // <<< move text upward to pop out of background
              child: Text(line, style: TextStyles.sora32W600White),
            ),
          ],
        );
      }).toList(),
    );
  }
}
