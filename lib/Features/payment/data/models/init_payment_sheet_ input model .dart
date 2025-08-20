class InitPaymentSheetInputtModel {
  final String clientSecret;
  final String ephemeralKeySecret;
  final String customerId;

  InitPaymentSheetInputtModel(this.customerId, 
      {required this.clientSecret, required this.ephemeralKeySecret});
}
