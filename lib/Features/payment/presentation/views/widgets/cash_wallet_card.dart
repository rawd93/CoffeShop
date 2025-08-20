import 'package:coffe_shop_project/Features/payment/data/models/payment_intent_input_model.dart';
import 'package:coffe_shop_project/Features/payment/presentation/views/widgets/CustomBottonBlocConsumer.dart';
import 'package:coffe_shop_project/Features/payment/presentation/views/widgets/custom_botton_sheet.dart';
import 'package:coffe_shop_project/core/utiles/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CashWalletCard extends StatelessWidget {
  const CashWalletCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.account_balance_wallet_outlined,
                  color: Color(0xffC67C4E),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cash/Wallet',
                      style: Styles.textStyle14.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '\$5.53',
                      style: Styles.textStyle16.copyWith(
                        color: const Color(0xffC67C4E),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.keyboard_arrow_down),
              ],
            ),
            const SizedBox(height: 20),
            CustomBottonBlocConsumer(
              paymentIntentInputModel: PaymentIntentInputModel(
                amount: '100',
                currency: 'USD',
                customerId: 'cus_SLdH3QkJDvFxnK',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
