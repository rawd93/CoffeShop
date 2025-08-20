
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
class SizeOfcup extends StatefulWidget {
  const SizeOfcup({super.key, required this.onsizeSelected});
  final Function(String size) onsizeSelected; //ترجع اسم الحجم المختار
  @override
  State<SizeOfcup> createState() => _SizeOfcupState();
}
class _SizeOfcupState extends State<SizeOfcup> {
  int selectindex = 0; //هو رقم يمثل أي حجم مختار حاليًا.
  final List<String> sizes = ['S', 'M', 'L'];
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
  widget.onsizeSelected(sizes[selectindex]);
});
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(sizes.length, (index) {
        return CustomBottom(
          text: sizes[index],
          index: index,
          isSelected: selectindex == index,
          onpressed: (i) {
            setState(() {
              selectindex = i;
            });
            widget.onsizeSelected(sizes[i]);//رجع الحجم المختار
          },
        );
      }),
    );
  }
}
