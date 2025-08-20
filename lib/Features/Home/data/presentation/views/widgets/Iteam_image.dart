import 'package:cached_network_image/cached_network_image.dart';
import 'package:coffe_shop_project/Features/Home/data/models/product_model.dart';
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/about_coffe.dart';
import 'package:coffe_shop_project/core/utiles/Assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailIteam extends StatelessWidget {
  const DetailIteam({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: product!.image != null && product.image.isNotEmpty?
                CachedNetworkImageProvider(product.image)
                : AssetImage(
                AssetsData.cupcoffe)as ImageProvider,

                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
         AboutCoffe(product:product ),
      ],
    );
  }
}
