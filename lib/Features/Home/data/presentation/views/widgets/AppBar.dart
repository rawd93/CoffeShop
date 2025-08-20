
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/CustomText_fieled.dart';
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/Row_text.dart';
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/container_Image.dart';
import 'package:coffe_shop_project/core/utiles/styles.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Location',
            textAlign: TextAlign.right,
            style: Styles.textStyle14.copyWith(
              color: const Color(0xffA2A2A2),
            ),
          ),
          const SizedBox(height: 8),
          const RowText(),
          const Padding(
            padding: EdgeInsets.all(24),
            child: CustomTextFieled(),
          ),
          const ContainerImage(),
        ],
      ),
    );
  }
}
