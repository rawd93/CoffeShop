import 'package:coffe_shop_project/core/utiles/styles.dart';
import 'package:flutter/material.dart';

class FeatureListOfCoffe extends StatelessWidget {
   FeatureListOfCoffe({
    super.key,
    required this.selectIndex,
    required this.onselctedCategory,
  });

  final int selectIndex; // 
  final void Function(int index) onselctedCategory;

  final List<String> texts = ['ALLCoffe', 'Machiato', 'Latte', 'Americano'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: texts.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                onselctedCategory(index); // يرسل القيمة لصفحة HomeView
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 14),
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                  decoration: BoxDecoration(
                    color: selectIndex == index
                        ? const Color(0xffC67C4E)
                        : Colors.white24,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 35,
                  child: Center(
                    child: Text(
                      texts[index],
                      style: Styles.textStyle14.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
