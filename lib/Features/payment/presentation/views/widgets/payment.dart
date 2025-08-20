
import 'package:coffe_shop_project/Features/payment/presentation/views/widgets/payment_price.dart';
import 'package:coffe_shop_project/core/utiles/styles.dart';
import 'package:flutter/cupertino.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Payment Summary',
              textAlign: TextAlign.start, // مهم جدًا
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        const Paymentprice(
          text: 'price',
          price: '\$4.53',
          textline: false,
        ),
        const Paymentprice(
          text: 'Delivery Fee ',
          price: '\$ 1.0',
          textline: true,
        ),
      ],
    );
  }
}
