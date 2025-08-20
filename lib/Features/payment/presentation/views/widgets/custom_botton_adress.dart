import 'package:coffe_shop_project/Features/payment/presentation/views/widgets/button_adress.dart';
import 'package:flutter/material.dart';

class CustomButtonAdress extends StatelessWidget {
  const CustomButtonAdress({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonAdrees(
            text: const Text('Edit Address'),
            icon: const Icon(
              Icons.edit_square,
            ),
            onPressed: () {},
          ),
          ButtonAdrees(
            text: const Text('Add Note'),
            icon: const Icon(
              Icons.note_alt_outlined,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
