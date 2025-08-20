import 'package:coffe_shop_project/Features/Home/data/models/product_model.dart';
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/Custom_read_More_text.dart';
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/buy_coffe.dart';
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/size_of_cup.dart';
import 'package:coffe_shop_project/core/utiles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DescCoffe extends StatelessWidget {
  const DescCoffe({super.key, this.product, this.onsizeSelected,});
  final Product? product;
  final Function(String size)? onsizeSelected;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Description', style: Styles.textStyle16),
        const SizedBox(height: 10),
        CustomReadMoreText(text: product?.description ?? ''),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        Text('Size', style: Styles.textStyle16),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        SizeOfcup(onsizeSelected: onsizeSelected!),
      ],
    );
      
  }
}
