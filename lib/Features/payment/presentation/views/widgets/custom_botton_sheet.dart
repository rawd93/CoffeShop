import 'package:coffe_shop_project/core/utiles/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottonsheet extends StatelessWidget {
  const CustomBottonsheet({
    super.key,
    this.isLoading = false,
    this.onTap,
  });
  final bool isLoading;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffC67C4E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: onTap,
        child: isLoading?const CircularProgressIndicator() : Text(
                'Order',
                style: Styles.textStyle16.copyWith(color: Colors.white),
              ),
      ),
    );
  }
}
