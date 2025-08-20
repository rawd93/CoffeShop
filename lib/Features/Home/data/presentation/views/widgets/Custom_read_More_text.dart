import 'package:coffe_shop_project/core/utiles/styles.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class CustomReadMoreText extends StatelessWidget {
  const CustomReadMoreText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text,
      trimLines: 2,
      moreStyle: Styles.textStyle14
          .copyWith(fontWeight: FontWeight.w600, color: Colors.red),
      trimMode: TrimMode.Line,
      lessStyle: Styles.textStyle14
          .copyWith(fontWeight: FontWeight.w600, color: Colors.red),
      trimCollapsedText: '..ReadMore',
      style: Styles.textStyle14.copyWith(
        color: const Color(0xffA2A2A2),
      ),
      trimExpandedText: '..اخفاء',
    );
  }
}
