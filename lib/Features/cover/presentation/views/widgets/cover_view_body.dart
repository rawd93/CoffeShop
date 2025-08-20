
import 'package:coffe_shop_project/core/Funiction/AppRoutes.dart';
import 'package:coffe_shop_project/core/utiles/Assets.dart';
import 'package:coffe_shop_project/core/utiles/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CoverViewBody extends StatelessWidget {
  const CoverViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AssetsData.cover),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.62,
                  left: 0,
                  right: 0,
                  child: Container(
                    color:
                        Colors.black.withOpacity(0.5), // خلفية شبه شفافة للنص
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            'Fall in Love with Coffee in Blissful Delight!',
                            textAlign: TextAlign.center,
                            style: Styles.textStyle32,
                          ),
                        ),
                        //     const SizedBox(height: 12),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.black,
            height: MediaQuery.of(context).size.height * 0.25,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to our cozy coffee corner, where every cup is a delightful for you.',
                    textAlign: TextAlign.center,
                    style: Styles.textStyle14.copyWith(
                      color: const Color(0xffA2A2A2),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 350,
                    height: 75,
                    child: ElevatedButton(
                      onPressed: () {
                        GoRouter.of(context).push(Approutes.khomeView);
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0xffC67C4E),
                      ),
                      child: const Text('Get Started'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
