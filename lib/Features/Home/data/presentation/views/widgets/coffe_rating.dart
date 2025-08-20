import 'package:coffe_shop_project/Features/Home/data/models/product_model.dart';
import 'package:coffe_shop_project/core/utiles/styles.dart';
import 'package:flutter/material.dart';

class Cofferating extends StatelessWidget {
  const Cofferating({super.key, this.product});
  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.star, size: 30, color: Colors.amber[400]),
        SizedBox(width: 5),
        Text(
          (product?.rating.toString() ?? '0'),
          // '4.8',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(width: 5),
        Text(
          '(230)',
          style: Styles.textStyle14.copyWith(color: const Color(0xffA2A2A2)),
        ),
      ],
    );
  }
}
