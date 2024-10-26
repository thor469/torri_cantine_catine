import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:torri_cantine_app/account/model/response/account_response.dart';
import 'package:torri_cantine_app/account/model/response/add_address_response.dart';
import 'package:torri_cantine_app/app/app_config.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/my_orders/model/request/my_orders_request.dart';
import 'package:torri_cantine_app/my_orders/my_orders/my_orders_bloc.dart';

abstract class StripePaymentManager {

  static Future <void> makePayment(int amount, String currency,BuildContext context,UserAddress shipping, UserAddress billing, int customerId, int totPoint) async{
  try {
    String clientSecret = await _getClientSecret((amount).toString(), currency);
    await  _initializePaymentSheet(clientSecret,billing ,customerId);
    await Stripe.instance.presentPaymentSheet();
     // ignore: use_build_context_synchronously
      context.read<MyOrdersBloc>().add(
          MyOrdersEvent.createCheckout(
              Billing(
                first_name: billing.first_name,
                last_name: billing.last_name,
                company: billing.company,
                address_1: billing.address_1,
                address_2: billing.address_2,
                city: billing.city,
                state: billing.state,
                postcode: billing.postcode,
                country: "IT",
                email: billing.email,
                phone: billing.phone,
              ),
              Shipping(
                first_name: shipping.first_name,
                last_name: shipping.last_name,
                company: shipping.company,
                address_1: shipping.address_1,
                address_2: shipping.address_2,
                city: shipping.city,
                state: shipping.state,
                postcode: shipping.postcode,
                country: "IT",
                phone: shipping.phone,
              ),
              "",
              "stripe",
              [],
              totPoint
          ),
        );
// ignore: use_build_context_synchronously
    _showSuccess(context);
  } catch(err){
     _showFail(context);
    throw Exception(err.toString());
    
  }
  //whsec_dOfPsPoemTpFViFSfkh3B61rBiCZZtz2
  } 
  static Future<void> _initializePaymentSheet(String clientSecret, UserAddress billing, int customerId) async {
   await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        customerEphemeralKeySecret: "",
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
              address: Address(city: billing.city
              , country: "IT", line1: "", line2: "", postalCode: billing.postcode, state: billing.state,)
            ),
      ));
  }

  static Future<String> _getClientSecret(amount, currency) async {

   print(amount);
   print(currency);
   print(AppConfig.secretKeyStripe);

    Dio dio= Dio();
    var response = await dio.post(AppConfig.stripeEndPoint,
    options: Options(
      headers: {
          'Authorization': 'Bearer ${AppConfig.secretKeyStripe}',
          'Content-Type': 'application/x-www-form-urlencoded'
        },       
     ),
     data: {
          'amount': amount,
          'currency': currency,
        }
        );
      return response.data['client_secret'];
  }

  static ScaffoldFeatureController _showSuccess(BuildContext context){
  MainNavigation.push(context, const MainNavigation.thankYou());
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