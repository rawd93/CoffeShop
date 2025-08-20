import 'package:coffe_shop_project/Features/Home/data/models/product_model.dart';
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/detailes_of_cup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.32,
      width: 156,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: Colors.white.withOpacity(0.3),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 3),
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: DetailesOfCup(product: product,),
    );
  }
}
