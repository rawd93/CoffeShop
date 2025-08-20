import 'package:coffe_shop_project/Features/Home/data/models/product_model.dart';
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/custom_card.dart';
import 'package:flutter/cupertino.dart';

class CustomScroll extends StatelessWidget {
  const CustomScroll({super.key, required this.products});
  final List<Product> products;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 0.5,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return CustomCard(product: products[index]);
        },
      ),
    );
  }
}
