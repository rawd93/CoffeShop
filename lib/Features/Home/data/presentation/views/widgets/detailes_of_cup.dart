import 'package:coffe_shop_project/Features/Home/data/models/product_model.dart';
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/Desc_coffe.dart';
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/coffe_card.dart';
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/price_of_cup.dart';
import 'package:coffe_shop_project/core/utiles/Assets.dart';
import 'package:coffe_shop_project/core/utiles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DetailesOfCup extends StatefulWidget {
  const DetailesOfCup({super.key, this.product,});
  final Product? product;
  @override
  State<DetailesOfCup> createState() => _DetailesOfCupState();
}

class _DetailesOfCupState extends State<DetailesOfCup> {
  late String selectedsize;
  late num currentPrice;
  @override
  void initState() {
    super.initState();
    selectedsize = widget.product!.sizes.isNotEmpty
        ? widget.product!.sizes[0]
        : 'S';
    currentPrice = widget.product!.price;
  }

 
  void updatePrice(String size) {
    selectedsize = size;
    switch (size) {
      case 'S':
        currentPrice = widget.product!.price!;
        break;
      case 'M':
        currentPrice = widget.product!.price + 2;
        break;
      case 'L':
        currentPrice = widget.product!.price + 4;
        break;
    }
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 120,
            child: Coffecard(
              product: widget.product,
              width: MediaQuery.of(context).size.width * 0.5,
              height: 120,
              topWidget: Container(
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    const Icon(Icons.star, color: Colors.orange, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      '${widget.product?.rating?.toString() ?? '0'}',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(widget.product?.name ?? '', style: Styles.textStyle16),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(widget.product?.type ?? '', style: Styles.textStyle14),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            child: PriceOfCup(
              product: widget.product,
              text$: '\$',
              text: currentPrice.toStringAsFixed(2),
              textPrice: '',
            ),
          ),
        ],
      ),
    );
  }
}
