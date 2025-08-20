

import 'package:flutter/material.dart';

class CustomerPositioned extends StatelessWidget {
  const CustomerPositioned({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 50,
          left: 16,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
        Positioned(
          top: 50,
          right: 16,
          child: CircleAvatar(
            backgroundColor: Colors.grey,
            child: IconButton(icon: Icon(Icons.my_location), onPressed: () {}),
          ),
        ),
      ],
    );
  }
}
