import 'package:coffe_shop_project/core/utiles/styles.dart';
import 'package:flutter/material.dart';
class CustomBottom extends StatelessWidget {
  const CustomBottom(
      {super.key,
      this.text,
      this.onpressed,
      this.isSelected,
      this.index,
      this.colortext,
      this.alignment,
      this.icon});
  final String? text;
  final int? index;
  final Color? colortext;
  //اذا تم اختيار زر اولا صح او خطا
  final bool? isSelected;
  final Alignment? alignment;
  final Icon? icon;
  final void Function(int)? onpressed;
  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 120,
      child: ElevatedButton(
        onPressed: (onpressed != null && index != null)
            ? () => onpressed!(index!)
            : null,
        style: ElevatedButton.styleFrom(
          textStyle: Styles.textStyle16,
          backgroundColor: isSelected == true
              ? const Color(0xffC67C4E)
              : const Color(0xffEDEDED),
          alignment: alignment,
        ),
            child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       Text(
          text ?? '',
          style: Styles.textStyle16.copyWith(color: colortext ?? Colors.black),
        ),// النص
       const   Icon(Icons.arrow_forward), // الأيقونة في النهاية
      ],
          // <<< هذا الجديد
        ),
      ),
    );
  }
}
