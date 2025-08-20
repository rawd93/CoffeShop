
import 'package:coffe_shop_project/Features/payment/presentation/views/widgets/custom_botton_adress.dart';
import 'package:coffe_shop_project/core/utiles/styles.dart';
import 'package:flutter/material.dart';

class DelevaryAddress extends StatelessWidget {
  const DelevaryAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Delivery Address',
          style: Styles.textStyle16,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Jl. Kpg Sutoyo',
          style: Styles.textStyle16,
        ),
        const Text(
          'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
        ),
        const SizedBox(
          height: 8,
        ),
        const CustomButtonAdress(),
      ]),
    );
  }
}
