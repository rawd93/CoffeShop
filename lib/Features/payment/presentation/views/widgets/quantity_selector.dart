import 'package:coffe_shop_project/core/utiles/styles.dart';
import 'package:flutter/material.dart';

class QuantitySelector extends StatefulWidget {
  const QuantitySelector({super.key});
  @override
  State<QuantitySelector> createState() => _QuantitySelector();
}

class _QuantitySelector extends State<QuantitySelector> {
  int quantity = 1; //يمثل عدد لاكواب ابتداء من 1
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            if (quantity > 1) {
              //اريد كوب واحد اي اذا كان عدد اكوال اكبر من  نقص ليصبح
              setState(() {
                quantity--;
              });
            }
          },
          child: buildContainerIcon(Icons.remove),
        ),
        const SizedBox(
          width: 12,
        ),
        Text(
          '$quantity',
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              quantity++;
            });
          },
          child: buildContainerIcon(Icons.add),
        ),
      ],
    );
  }
}

Widget buildContainerIcon(IconData icon) {
  return Container(
    width: 30,
    height: 30,
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      color: Color(0xffEDEDED),
    ),
    child: Center(
      child: Icon(
        icon,
        size: 20,
      ),
    ),
  );
}
