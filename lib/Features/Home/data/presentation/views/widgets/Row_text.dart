import 'package:coffe_shop_project/core/utiles/styles.dart';
import 'package:flutter/material.dart';

class RowText extends StatelessWidget {
  const RowText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Bilzen, Tanjungbal',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
            color: const Color(0xffD8D8D8),
          ),
        ),
        const Opacity(
          opacity: 0.66,
          child: Icon(
            Icons.keyboard_arrow_down,
            color: Color(0xffD8D8D8),
          ),
        )
      ],
    );
  }
}
