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
    return Align(
      alignment: Alignment.topLeft,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),

            child: (product?.image != null && product!.image.isNotEmpty)
                ? CachedNetworkImage(
                    width: width,
                    errorWidget: (context, _, _) {
                      return Icon(Icons.image);
                    },
                    fit: BoxFit.cover,
                    height: height,
                    imageUrl: product!.image,
                  )
                : Image.asset(
                    AssetsData.cupcoffe,
                    height: height,
                    width: width,
                    fit: BoxFit.cover,
                  ),
          ),
          if (topWidget != null)
            Positioned(right: 0, top: 0, child: topWidget!),
        ],
      ),
    );
  }
}
