import 'package:flutter/material.dart';

class ButtonAdrees extends StatelessWidget {
  const ButtonAdrees({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });
  final Text text;
  final Icon icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            iconColor: Colors.black45,
            alignment: Alignment.centerLeft,
            side: const BorderSide(color: Colors.grey),
            backgroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16), // وهنا
          ),
          onPressed: onPressed,
          label: text,
          icon: icon),
    );
  }
}
