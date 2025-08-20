import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomBar extends StatefulWidget {
  const BottomBar(
      {super.key, required this.selectedIndex, required this.onchange});
  final int selectedIndex; //رقم العنصر المحددحاليا
  final ValueChanged<int>
      onchange; //]دالة وظيفتها تغير كيرنت انديكس في الصفحة الرئيسية او"نفّذ الدالة اللي أعطيتها لي، وأعطيها القيمة اللي اختارها المستخدم".
//عني تاخذ رقم وتنفذ أمر (مثل تغيير الصفحة).  onchage دالة
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //لما المستخدم يضغط يتم استدعاء onTap
      onTap: (value) {
        selectedIndex = value; //يحفظ العنصر المختار
        setState(() {
          widget.onchange(
              value); //لما المستخدم يضغط على زر يستدعي هذه الدالة ثم ترجع هي دالة ل هوم فيو وتنفذ نفسها
        });
      },
      iconSize: 30,
      currentIndex: selectedIndex,
      selectedItemColor: const Color(0xffC67C4E),
      unselectedItemColor: const Color(0xffEDEDED),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.heart),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_active_outlined),
          label: '',
        ),
      ],
    );
  }
}
