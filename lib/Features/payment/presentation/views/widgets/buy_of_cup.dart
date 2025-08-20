
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/coffe_card.dart';
import 'package:coffe_shop_project/Features/payment/presentation/views/widgets/quantity_selector.dart';
import 'package:coffe_shop_project/core/utiles/styles.dart';
import 'package:flutter/material.dart';

class Buyofcup extends StatelessWidget {
  const Buyofcup({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Coffecard(
            width: 100,
            height: 90,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Caffe Mocha',
              style: Styles.textStyle16,
            ),
            const Text('Deep Foam'),
          ],
        ),
        QuantitySelector(),
      ],
    );
  }
}
