
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/Container_up_text.dart';
import 'package:coffe_shop_project/core/utiles/Assets.dart';
import 'package:flutter/material.dart';

class ContainerImage extends StatelessWidget {
  const ContainerImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      height: MediaQuery.of(context).size.height * 0.20,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AssetsData.coverimage),
        ),
      ),
      child: const ContainerupText(),
    );
  }
}
