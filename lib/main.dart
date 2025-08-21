
import 'package:coffe_shop_project/Features/payment/data/repos/repos_payment_impl.dart';
import 'package:coffe_shop_project/Features/payment/presentation/manager/cubit/payment_cubit.dart';
import 'package:coffe_shop_project/core/Funiction/AppRoutes.dart';
import 'package:coffe_shop_project/core/api_keys.dart';
import 'package:coffe_shop_project/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Stripe.publishableKey = ApiKeys.stripePublishableKey;
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return
        BlocProvider(
        create: (context) => PaymentCubit(ReposPaymentImpl()),
        child: MaterialApp.router(
      routerConfig: Approutes.router,
      debugShowCheckedModeBanner: false,
      ),
    );
  }
}
