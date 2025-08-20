import 'package:coffe_shop_project/core/utiles/styles.dart';
import 'package:flutter/material.dart';

class ContainerupText extends StatelessWidget {
  const ContainerupText({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 120,
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: 80,
                height: 40,
                color: Colors.red,
                child: Center(
                  child: Text(
                    'Promo',
                    style: Styles.textStyle16.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 220,
              height: 40,
              color: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Buy on get',
                style: Styles.textStyle32.copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(height: 4),
            Container(
              width: 160,
              height: 40,
              color: Colors.black,
              padding: const EdgeInsets.only(),
              child: Text(
                textAlign: TextAlign.center,
                ' one FREE',
                style: Styles.textStyle32.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
