import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.text,
    this.icon,
  });
  final String text;
  final Icon? icon;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: Text(text),
      ),
      actions: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24), child: icon),
      ],
    );
  }
}
