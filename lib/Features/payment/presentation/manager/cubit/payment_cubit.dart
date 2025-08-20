import 'package:bloc/bloc.dart';
import 'package:coffe_shop_project/Features/payment/data/models/payment_intent_input_model.dart';
import 'package:coffe_shop_project/Features/payment/data/repos/repos_payment.dart';
import 'package:coffe_shop_project/Features/payment/data/repos/repos_payment_impl.dart';
import 'package:meta/meta.dart';
part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this.reposPaymentImpl) : super(PaymentInitial());
  final ReposPaymentImpl reposPaymentImpl;
  Future<void> makePayment({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) async {
    emit(PaymentLoading());
    var data = await reposPaymentImpl.makePayment(
      paymentIntentInputModel: paymentIntentInputModel,
    );

    data.fold(
      (l) {
        emit(PaymentFailure(l.errorMessage));
      },
      (r) {
        emit(PaymentSucsess());
      },
    );
  }
}
