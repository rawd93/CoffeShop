import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/coffe_card.dart';
import 'package:flutter/cupertino.dart';

class buildRowofcard extends StatelessWidget {
  const buildRowofcard({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Coffecard()),
        SizedBox(
          width: 31,
        ),
        Expanded(child: Coffecard()),
      ],
    );
  }
}
