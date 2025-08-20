
import 'package:coffe_shop_project/Features/payment/data/models/ephemeralkeymodel/ephemeralkeymodel.dart';
import 'package:coffe_shop_project/Features/payment/data/models/init_payment_sheet_%20input%20model%20.dart';
import 'package:coffe_shop_project/Features/payment/data/models/payment_intent_input_model.dart';
import 'package:coffe_shop_project/Features/payment/data/models/payment_intent_model/payment_intent_model.dart';
import 'package:coffe_shop_project/core/api_keys.dart';
import 'package:coffe_shop_project/core/utiles/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

//  paymentIntentobject create paymentintent(amount,currence,customoridمين يلي عندو نية دفع)//في نية لدفع او شراء منتج
// keysecret    CreateEphemeralkey(customoreId)غير ضروروي غير اذا بدي استخد كستمر
//init payment sheet(, mearchinDisplayName,payment IntentClientSecret,ephemeralKey)//تظهرلي لinformation
//presentPaymentsheet()//الهدف منا تعرضلك  paymentsheet
class StripeServices {
  final ApiService apiService = ApiService();

  Future<PaymentIntentModel> createPaymentIntent(
      //كريت يسمنت انتت
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
        contentType: Headers.formUrlEncodedContentType,
        body: paymentIntentInputModel.toJson(),
        url: 'https://api.stripe.com/v1/payment_intents',
        token: ApiKeys.secretkey);
 var paymentIntentModel = PaymentIntentModel.fromJson(response.data); // بارث لداتا
    return paymentIntentModel;
  }

// سيت اب للبيمينت شيت
  Future initpaymentsheet({required InitPaymentSheetInputtModel initPaymentSheetInputtModel}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: initPaymentSheetInputtModel.clientSecret,
        merchantDisplayName: 'CoffeShop',
        customerEphemeralKeySecret://optinal
            initPaymentSheetInputtModel.ephemeralKeySecret,
        customerId: initPaymentSheetInputtModel.customerId,//optinal
      ),
    );
  }
  Future displayPaymentsheet() async {
    await Stripe.instance.presentPaymentSheet(); //اظهار لبيمنت شيت
  }
//دمج3 ميثود مع بعض
  makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntentModel = await createPaymentIntent(paymentIntentInputModel);
    var ephemeralKeyModel = await createEphemeralKey(
        customorId: paymentIntentInputModel.customerId);

    var initPaymentSheetInputtModel = InitPaymentSheetInputtModel(
        paymentIntentInputModel.customerId,
        clientSecret: paymentIntentModel.clientSecret!,
        ephemeralKeySecret: ephemeralKeyModel.secret!);
    await initpaymentsheet(
       initPaymentSheetInputtModel : initPaymentSheetInputtModel);
    await displayPaymentsheet();
  }
  Future<Ephemeralkeymodel> createEphemeralKey(
      {required String customorId}) async {
    var response = await apiService.post(
        contentType: Headers.formUrlEncodedContentType,
        body: {'customer': customorId},
        url: 'https://api.stripe.com/v1/ephemeral_keys',
        token: ApiKeys.secretkey,
        headers: {
          'Authorization': "Bearer ${ApiKeys.secretkey}",
          'Stripe-Version': '2025-04-30.basil'
        });

    var ephemeralKey = Ephemeralkeymodel.fromJson(response.data); // بارث لداتا
    return ephemeralKey;
  }
}
