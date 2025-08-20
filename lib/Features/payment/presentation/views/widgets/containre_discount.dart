
import 'package:coffe_shop_project/core/utiles/Assets.dart';
import 'package:coffe_shop_project/core/utiles/styles.dart';
import 'package:flutter/material.dart';

class ContainerDiscount extends StatelessWidget {
  const ContainerDiscount({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(AssetsData.deliver),
          Text(
            '1 Discount is Applies',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
          const Icon(Icons.arrow_forward_ios_outlined)
        ],
      ),
    );
  }
}
