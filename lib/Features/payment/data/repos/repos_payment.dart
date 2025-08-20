
import 'package:coffe_shop_project/Features/payment/data/models/payment_intent_input_model.dart';
import 'package:coffe_shop_project/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class ReposPayment {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel});
}
