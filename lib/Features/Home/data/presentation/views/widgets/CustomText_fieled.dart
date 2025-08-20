
import 'package:coffe_shop_project/core/utiles/Assets.dart';
import 'package:coffe_shop_project/core/utiles/styles.dart';
import 'package:flutter/material.dart';

class CustomTextFieled extends StatelessWidget {
  const CustomTextFieled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.60,
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xff2A2A2A),
              prefixIcon: const Icon(
                size: 28,
                Icons.search_sharp,
                color: Colors.white70,
              ),
              hintText: 'SearchCoffe',
              hintStyle: Styles.textStyle14.copyWith(color: Colors.white60),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.black87,
                ), // حدود عند التركيز
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Container(
          width: 52,
          height: 52,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xffC67C4E),
          ),
          child: Image.asset(
            width: 50,
            AssetsData.icon,
          ),
        ),
      ],
    );
  }
}
