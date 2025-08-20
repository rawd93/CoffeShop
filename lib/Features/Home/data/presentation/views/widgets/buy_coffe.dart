import 'package:coffe_shop_project/Features/Home/data/models/product_model.dart';
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/custom_buttom.dart';
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/price_of_cup.dart';
import 'package:coffe_shop_project/core/Funiction/AppRoutes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class BuyCoffe extends StatefulWidget {
  const BuyCoffe({super.key, this.product, required this.price});
  final Product? product;
  final num price;
  @override
  State<BuyCoffe> createState() => _BuyCoffeState();
}
class _BuyCoffeState extends State<BuyCoffe> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PriceOfCup(
          product: widget.product,
          textPrice: 'Price',
          text$: '\$',
          text: widget.price.toString(),
          textcolor: Color(0xffC67C4E),
          showIcon: false,
        ),
        SizedBox(
          width: 150,
          child: CustomBottom(
            index: 0,
            isSelected: isSelected,
            onpressed: (_) {
              GoRouter.of(context).push(Approutes.orderview);
              setState(() {
                isSelected = !isSelected;
                //اي ازسيتيكتد لتساوي اوليست فلس معناها اصبح ترو
              });
            },
            text: 'BuyNow',
            colortext: Colors.white,
          ),
        ),
      ],
    );
  }
}
