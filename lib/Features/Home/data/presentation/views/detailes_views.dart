import 'package:coffe_shop_project/Features/Home/data/models/product_model.dart';
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/Iteam_image.dart';
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class DetailesView extends StatelessWidget {
  const DetailesView({super.key, this.product});
  final Product? product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(text: 'Detailes', icon: Icon(FontAwesomeIcons.heart)),
            DetailIteam(product: product!),
          ],
        ),
      ),
    );
  }
}
