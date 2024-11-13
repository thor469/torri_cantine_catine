import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:torri_cantine_app/my_orders/model/response/my_orders_response.dart';

abstract class StripePaymentManager {
  static Future<bool> makePayment(BuildContext context, int customerId, AddressResponse billing, String jwt) async{
  try {

    String decodedUrlJwt = Uri.decodeComponent(jwt);
    decodedUrlJwt = decodedUrlJwt.padRight((decodedUrlJwt.length + 3) ~/ 4 * 4, '=');
    var decodedBytes = base64Url.decode(decodedUrlJwt);
    var decodedStr = utf8.decode(decodedBytes);
    var jsonData = jsonDecode(decodedStr);

    await  _initializePaymentSheet(jsonData["client_secret"], billing ,customerId);
    await Stripe.instance.presentPaymentSheet();


    // ignore: use_build_context_synchronously
    _showSuccess(context);
    return true;
  } catch(err){
     _showFail(context);
    throw Exception(err.toString());
     return false;
  }
  } 
  static Future<void> _initializePaymentSheet(String clientSecret, AddressResponse billing, int customerId) async {
    var a = await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        customerId: customerId.toString(),
        paymentIntentClientSecret: clientSecret,
        merchantDisplayName: "Pagamento Stripe",
        primaryButtonLabel: 'Paga ora',
        style: ThemeMode.dark,
         appearance: const PaymentSheetAppearance(
            colors: PaymentSheetAppearanceColors(
              background: Color.fromARGB(255, 255, 255, 255),
              componentBorder: Colors.black,
            ),),
            billingDetails: BillingDetails(
              name: billing.first_name,
              address: Address(city: billing.city, country: "IT", line1: billing.address_1, line2: billing.address_2, postalCode: billing.postcode, state: billing.state,)
            ),
      ));
  }
  static ScaffoldFeatureController _showSuccess(BuildContext context){
  return ScaffoldMessenger.of(context).showSnackBar(
       const SnackBar(
          content: Text('Pagamento avvenuto con successo'),
        )
    );
  }

  static ScaffoldFeatureController _showFail(BuildContext context){
    return ScaffoldMessenger.of(context).showSnackBar(
       const SnackBar(
          content: Text('Pagamento non eseguito'),
        )
    );
  }


}