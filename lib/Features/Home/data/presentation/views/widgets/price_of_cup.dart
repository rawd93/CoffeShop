import 'package:coffe_shop_project/Features/Home/data/models/product_model.dart';
import 'package:coffe_shop_project/core/Funiction/AppRoutes.dart';
import 'package:coffe_shop_project/core/utiles/Assets.dart';
import 'package:coffe_shop_project/core/utiles/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PriceOfCup extends StatelessWidget {
  const PriceOfCup({
    super.key,
    this.text$,
    this.text,
    this.textcolor,
    this.showIcon = true,
    this.textPrice,
    this.product,
  });
  final String? textPrice;
  final String? text$;
  final String? text;
  final Color? textcolor;
  final bool? showIcon;
  final Product? product;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      child: Padding(
        padding: EdgeInsets.all(4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(textPrice ?? '', style: Styles.textStyle14),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                  text$ ?? '',
                  style: Styles.textStyle18.copyWith(color: textcolor),
                ),
                const SizedBox(width: 5),
                Text(
                  text ?? '',
                  style: Styles.textStyle18.copyWith(color: textcolor),
                ),
                Spacer(),
                if (showIcon!)
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(
                        context,
                      ).push(Approutes.detailesView, extra: product);
                    },
                    child: Image.asset(AssetsData.plusIcon),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
