
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/custom_appBar.dart';
import 'package:coffe_shop_project/Features/payment/presentation/views/widgets/Enter_bottom.dart';
import 'package:coffe_shop_project/Features/payment/presentation/views/widgets/buy_of_cup.dart';
import 'package:coffe_shop_project/Features/payment/presentation/views/widgets/cash_wallet_card.dart';
import 'package:coffe_shop_project/Features/payment/presentation/views/widgets/containre_discount.dart';
import 'package:coffe_shop_project/Features/payment/presentation/views/widgets/delivary_adress.dart';
import 'package:coffe_shop_project/Features/payment/presentation/views/widgets/payment.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class Orderviewbody extends StatefulWidget {
  const Orderviewbody({super.key});
  @override
  State<Orderviewbody> createState() => _OrderviewbodyState();
}
class _OrderviewbodyState extends State<Orderviewbody> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            text: 'Order',
          ),
          EnterBottom(),
          DelevaryAddress(),
          Divider(
            indent: 30,
            endIndent: 30,
          ),
          Buyofcup(),
          Divider(
            color: Color(0xffF9F2ED),
            thickness: 7,
          ),
          ContainerDiscount(),
          Payment(),
          CashWalletCard(),
        ],
      ),
    );
  }
}
