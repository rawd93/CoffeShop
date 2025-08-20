import 'package:coffe_shop_project/Features/Home/data/models/product_model.dart';
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/Desc_coffe.dart';
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/buy_coffe.dart';
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/coffe_rating.dart';
import 'package:coffe_shop_project/core/utiles/Assets.dart';
import 'package:coffe_shop_project/core/utiles/styles.dart';
import 'package:coffe_shop_project/core/utiles/update_price.dart';
import 'package:flutter/material.dart';
class AboutCoffe extends StatefulWidget {
  const AboutCoffe({super.key,required this.product});
  final Product product;
  @override
  State<AboutCoffe> createState() => _AboutCoffeState();
}
class _AboutCoffeState extends State<AboutCoffe> {
  late String selectedSize;
  late num currentPrice;
  @override
  void initState() {
    super.initState();
    selectedSize = widget.product.sizes.isNotEmpty
        ? widget.product.sizes[0]
        : 'S';
    currentPrice = widget.product!.price;
  }
  void updatePrice(String size) {
    setState(() {
      selectedSize = size;
      currentPrice = calculatePrice(widget.product!.price, size);
    });
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.product?.name ?? '', style: Styles.textStyle18),
            SizedBox(height: MediaQuery.of(context).size.height * 0.014),
            Row(
              children: [
                Text(
                  'Ice/Hot',
                  style: Styles.textStyle14.copyWith(
                    color: const Color(0xffA2A2A2),
                  ),
                ),
                const Spacer(),
                Image.asset(AssetsData.driver),
                const SizedBox(width: 16),
                Image.asset(AssetsData.con),
                const SizedBox(width: 16),
                const Icon(Icons.emoji_food_beverage, color: Color(0xffC67C4E)),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Cofferating(product: widget.product),
            const Divider(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            DescCoffe(
              product: widget.product,
              onsizeSelected: (size) {
                updatePrice( size); // onsizeSelected يلي هي دالة ابديت برايس الاب يعطي قيمة
              },
            ),
            SizedBox(height: 30),
            BuyCoffe(product: widget.product, price: currentPrice),
          ],
        ),
      ),
    );
  }
}
