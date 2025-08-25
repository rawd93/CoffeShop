import 'package:cached_network_image/cached_network_image.dart';
import 'package:coffe_shop_project/Features/Home/data/models/product_model.dart';
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/about_coffe.dart';
import 'package:coffe_shop_project/core/utiles/Assets.dart';
import 'package:flutter/material.dart';

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
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),

              child: (product?.image != null && product!.image.isNotEmpty)
                  ? CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: product!.image,
                      errorWidget: (context, _, _) {
                        return Icon(Icons.image);
                      },
                    )
                  : Image.asset(AssetsData.cupcoffe, fit: BoxFit.cover),
            ),
          ),
        ),
        AboutCoffe(product: product),
      ],
    );
  }
}
