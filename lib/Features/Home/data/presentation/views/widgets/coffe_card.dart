import 'package:cached_network_image/cached_network_image.dart';
import 'package:coffe_shop_project/Features/Home/data/models/product_model.dart';
import 'package:coffe_shop_project/core/utiles/Assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Coffecard extends StatelessWidget {
  const Coffecard({
    super.key,
    this.width,
    this.height,
    this.topWidget,
    this.product,
  });
  final Product? product;
  final double? width;
  final double? height;
  final Widget? topWidget;
  @override
  Widget build(BuildContext context) {
    print("DEBUG Product Image: ${product?.image}");
    return Align(
      alignment: Alignment.topLeft,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
    image: (product?.image != null &&
            product!.image.isNotEmpty )
        ? CachedNetworkImageProvider(product!.image)
        : AssetImage(AssetsData.cupcoffe) as ImageProvider,
    fit: BoxFit.cover,
  ),

              // image: DecorationImage(
              //   image: CachedNetworkImageProvider(product!.image ?? ''),
              //   fit: BoxFit.cover,
              // ),
            ),
          ),
          if (topWidget != null)
            Positioned(right: 0, top: 0, child: topWidget!),
        ],
      ),
    );
  }
}
