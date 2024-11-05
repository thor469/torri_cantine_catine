class AppConfig {

  static const String flavor = String.fromEnvironment('APP_FLAVOR', defaultValue:
   'staging');
  //'production');


  static const baseUrl = String.fromEnvironment('BASE_URL', defaultValue: flavor=='production'?'https://shop.torricantine.it':'https://testapp.torricantine.it');

  static const username = String.fromEnvironment('USERNAME',
      defaultValue: flavor=='production'?'ck_46b3cc7ea28ec81063524f084d7fce55a7ff281f':'ck_d987cfc71d78928da544c7ee9cc8b4daac91dfbf');
  static const password = String.fromEnvironment('PASSWORD',
      defaultValue: flavor=='production'?'cs_c3f7b132d5f1f4a14f05b2afbce25ccef0965408':'cs_3706ae99c6b059296ff689b4207fe25289c81e11');
  static const tokenAuth = String.fromEnvironment('TOKENAUTH',
      defaultValue:
      flavor=='production'?';:%]vt}:Wi(:8jN([,4MRih[I(xTNt<DQs/!j)kcMP~khD8[)].NL4]5^/S,OL^-':';:%]vt}:Wi(:8jN([,4MRih[I(xTNt<DQs/!j)kcMP~khD8[)].NL4]5^/S,OL^-');
  // static const String secretKeyStripe = flavor=='production'?"sk_test_H3YaLAxpT2sAaA5ZP4orpMAI00HAQeavCJ":"sk_test_H3YaLAxpT2sAaA5ZP4orpMAI00HAQeavCJ";
  static const String secretKeyStripe = flavor=='production'?"sk_test_H3YaLAxpT2sAaA5ZP4orpMAI00HAQeavCJ":"sk_test_51QHRcORui7MolgV0vxAtoTCKiya6JZtdPLJanvHkzAXm2LagxysQUd9qQTVjfHxhZ4kSRbQDHLOEWSxFBDqT2B27006OznFdEa";
  static const String stripeEndPoint = flavor=='production'?"https://api.stripe.com/v1/payment_intents":"https://api.stripe.com/v1/payment_intents";

  static const productStatusFilter = String.fromEnvironment('productStatus',defaultValue: 'publish');
  static const catalogVisibilityFilter = String.fromEnvironment('catalogVisib',defaultValue: 'visible');

}
