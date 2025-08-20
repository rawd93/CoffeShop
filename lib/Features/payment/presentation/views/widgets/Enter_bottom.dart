
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

class EnterBottom extends StatefulWidget {
  const EnterBottom({super.key});

  @override
  State<EnterBottom> createState() => _EnterBottomState();
}

class _EnterBottomState extends State<EnterBottom> {
  int selexctIndex = 0; // 0 = Pickup, 1 = Deliver
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.12,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: CustomBottom(
              text: 'Pickup',
              alignment: Alignment.centerRight,
              index: 0,
              isSelected: selexctIndex == 0,
              onpressed: (int index) {
                setState(() {
                  selexctIndex = index;
                });
              },
            ),
          ),
        ),
        Positioned(
          right: 180,
          left: 36,
          top: 30,
          bottom: 30,
          child: SizedBox(
            width: 150,
            child: CustomBottom(
              text: 'Deliver',
              colortext: Colors.white,
              index: 1,
              isSelected: selexctIndex == 1,
              onpressed: (int index) {
                setState(() {
                  selexctIndex = index;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
