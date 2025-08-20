import 'package:coffe_shop_project/Features/Home/data/models/product_model.dart';
import 'package:coffe_shop_project/Features/Home/data/presentation/views/detailes_views.dart';
import 'package:coffe_shop_project/Features/Home/data/presentation/views/homeview.dart';
import 'package:coffe_shop_project/Features/cover/presentation/views/widgets/cover.dart';
import 'package:coffe_shop_project/Features/payment/presentation/views/delivery_ordedr.dart';
import 'package:coffe_shop_project/Features/payment/presentation/views/order_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
abstract class Approutes {
  static const coverView = '/coverView';
  static const khomeView = '/homeView';
  static const detailesView = '/DetailesView';
  static const orderview = '/OrderView';
  static const deliveryOrder = '/DeliveryOrdedr';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const CoverView()),
      GoRoute(path: '/homeView', builder: (context, state) => const HomeView()),
      GoRoute(
        path: '/DetailesView',
      builder: (context, state) {
  final product = state.extra as Product;
  if (product is! Product) {
    return const  Text('There is an Error'); 
  }
  return DetailesView(product: product as Product);
}
      ),
      GoRoute(
        path: '/OrderView',
        builder: (context, state) => const OrderView(),
      ),
      GoRoute(
        path: '/DeliveryOrdedr',
        builder: (context, state) => const DeliveryOrdedr(),
      ),
    ],
  );
}
