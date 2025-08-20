
import 'package:coffe_shop_project/Features/Home/data/presentation/views/detailes_views.dart';
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/Bottom_Bar.dart';
import 'package:coffe_shop_project/Features/Home/data/presentation/views/widgets/home_view_body.dart';
import 'package:coffe_shop_project/Features/payment/presentation/views/delivery_ordedr.dart';
import 'package:coffe_shop_project/Features/payment/presentation/views/order_view.dart';
import 'package:flutter/material.dart';
class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}
class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;
  bool showBottomBar = true;
  final List<Widget> _sceens = const [
    // هذا الجزء مسؤول عن عرض الصفحات المختلفة:
    HomeViewBody(),
    DetailesView(),
    OrderView(),
    DeliveryOrdedr(),
  ];
  void _select(index) {
    selectedIndex = index;
    // وظيفة تغيير الصفحة:انديكس يمثل رقم الصفحة بدي روح عليها بعد ضغط المستخدم
    setState(() {
      showBottomBar = (index == 0);
      //selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: showBottomBar
          ? BottomBar(
              onchange: _select,
              selectedIndex: selectedIndex,
              //   onchange: (int value) {
              //     selectedIndex = value;
              //     setState(() {});
              //   },
              //   selectedIndex: selectedIndex,
            )
          : null,
      body: _sceens[selectedIndex],
    );
  }
}
