import 'package:coffe_shop_project/Features/payment/presentation/views/widgets/Customer_Flutter_map.dart';
import 'package:coffe_shop_project/Features/payment/presentation/views/widgets/Delevery_To_Customer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map_animations/flutter_map_animations.dart';
import 'package:latlong2/latlong.dart';

class DelivaryviewBody extends StatefulWidget {
  const DelivaryviewBody({super.key});
  @override
  State<DelivaryviewBody> createState() => _DelivaryviewBodyState();
}

class _DelivaryviewBodyState extends State<DelivaryviewBody>
    with TickerProviderStateMixin {
  final store = LatLng(40.748817, -73.985000);
  final customer = LatLng(40.749641, -73.988920);
  late final AnimatedMapController _animatedMapController;
  void initState() {
    _animatedMapController = AnimatedMapController(
      vsync: this,
      duration: Duration(seconds: 2),
      curve: Curves.easeIn,
      cancelPreviousAnimations: true,
    );
    super.initState();
  }

  @override
  void dispose() {
    _animatedMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                CustomerFlutterMap(
                  animatedMapController: _animatedMapController,
                  store: store,
                  customer: customer,
                ),
                CustomerPositioned(),
              ],
            ),
          ),
          SizedBox(height: 28),
          DeliveryToCustomer(),
        ],
      ),
    );
  }
}

class CustomerPositioned extends StatelessWidget {
  const CustomerPositioned({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
