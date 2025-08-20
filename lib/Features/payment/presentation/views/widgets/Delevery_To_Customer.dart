import 'package:coffe_shop_project/core/utiles/styles.dart';
import 'package:flutter/material.dart';

class DeliveryToCustomer extends StatelessWidget {
  const DeliveryToCustomer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        boxShadow: [BoxShadow(blurRadius: 10, color: Colors.white24)],
      ),
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('10 minutes left', style: Styles.textStyle18),
          Text('Delivery to Jl. Kpg Sutoyo', style: Styles.textStyle14),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey, width: 2),
              ),
              child: Row(
                children: [
                  Icon(Icons.bike_scooter_sharp, color: Colors.brown, size: 35),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      "Delivered your order\nWe will deliver your goods in the shortest time.",
                      style: TextStyle(
                        fontSize: 16,
                      ).copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Icon(Icons.call, size: 30),
              ),

              SizedBox(width: 8),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Brooklyn Simmons",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 8),
                  Text('Personal Courier', style: Styles.textStyle14),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
