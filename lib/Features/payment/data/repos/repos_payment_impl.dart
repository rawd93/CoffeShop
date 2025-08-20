
import 'package:coffe_shop_project/Features/payment/data/models/payment_intent_input_model.dart';
import 'package:coffe_shop_project/Features/payment/data/repos/repos_payment.dart';
import 'package:coffe_shop_project/core/utiles/stripe_service.dart';
import 'package:coffe_shop_project/errors/failure.dart';
import 'package:dartz/dartz.dart';

class ReposPaymentImpl extends ReposPayment {
  final StripeServices stripeServices = StripeServices();
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripeServices.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);
      return right(null);
    } catch (e) {
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
