
import 'package:coffe_shop_project/Features/payment/data/models/payment_intent_input_model.dart';
import 'package:coffe_shop_project/Features/payment/presentation/manager/cubit/payment_cubit.dart';
import 'package:coffe_shop_project/Features/payment/presentation/views/delivery_ordedr.dart';
import 'package:coffe_shop_project/Features/payment/presentation/views/widgets/custom_botton_sheet.dart';
import 'package:coffe_shop_project/core/Funiction/AppRoutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
class CustomBottonBlocConsumer extends StatelessWidget {
  const CustomBottonBlocConsumer({
    super.key,
    required this.paymentIntentInputModel,
  });
  final PaymentIntentInputModel paymentIntentInputModel;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSucsess) {
          // Text('ThankYou');

         GoRouter.of(context).push(Approutes.deliveryOrder);
        }
        if (state is PaymentFailure) {
          SnackBar snackBar = SnackBar(content: Text(state.errorMessage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomBottonsheet(
            onTap: () {
              PaymentIntentInputModel paymentIntentInputModel =
                  PaymentIntentInputModel(
                      amount: '100',
                      currency: 'USD',
                       customerId: 'cus_SLdH3QkJDvFxnK');
              BlocProvider.of<PaymentCubit>(context).makePayment(
                  paymentIntentInputModel: paymentIntentInputModel);
            },
            isLoading: state is PaymentLoading ? true : false);
      },
    );
  }
}
