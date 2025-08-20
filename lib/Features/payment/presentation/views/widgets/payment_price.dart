import 'package:coffe_shop_project/core/utiles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Paymentprice extends StatelessWidget {
  const Paymentprice({
    super.key,
    this.text,
    this.price,
    this.textline = false,
  });
  final String? text;
  final bool? textline;
  final String? price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(
          text ?? '',
          style: Styles.textStyle14,
        ),
        const Spacer(),
        if (textline ?? false)
          Text(
            price ?? '2.0',
            style: const TextStyle(
              decoration: TextDecoration.lineThrough,
              color: Colors.grey,
            ),
          ),
        const SizedBox(
          width: 8,
        ),
        Text(
          price ?? '',
          style: Styles.textStyle18,
        ),
        const SizedBox(
          width: 5,
        ),
      ]),
    );
  }
}
