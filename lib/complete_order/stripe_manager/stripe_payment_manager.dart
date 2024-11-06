import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:torri_cantine_app/account/model/response/add_address_response.dart';
import 'package:torri_cantine_app/app/app_config.dart';
import 'package:torri_cantine_app/app/dependency_injection/dependency_factory_impl.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/my_orders/model/request/my_orders_request.dart';
import 'package:torri_cantine_app/my_orders/model/response/my_orders_response.dart';
import 'package:torri_cantine_app/my_orders/my_orders/my_orders_bloc.dart';

abstract class StripePaymentManager {

  static Future <void> makePayment(int amount, String currency,BuildContext context,UserAddress shipping, UserAddress billing, int customerId, int totPoint, MyOrdersResponse orderId, String note) async{
  try {
    var clientSecret = await _getClientSecret((amount).toString(), currency, orderId.order_id ?? 0, shipping, orderId.order_number ?? "", customerId);
    await  _initializePaymentSheet(clientSecret['client_secret'], billing ,customerId);
    await Stripe.instance.presentPaymentSheet();


    await context.read<MyOrdersBloc>().createCheckOutForStripe(
        Billing(
            first_name: shipping.first_name,
            last_name: shipping.last_name,
            company: shipping.company,
            address_1: shipping.address_1,
            address_2: shipping.address_2,
            city: shipping.city,
            state: shipping.state,
            postcode: shipping.postcode,
            country: "IT",
            phone: shipping.phone
        ),
        Shipping(
            first_name: shipping.first_name,
            last_name: shipping.last_name,
            company: shipping.company,
            address_1: shipping.address_1,
            address_2: shipping.address_2,
            city: shipping.city,
            state: billing.state,
            postcode: shipping.postcode,
            country: "IT",
            phone: shipping.phone
        ),
        note,
        "stripe_cc",
        [
          {
            "key": "payment_intent_id",
            "value": clientSecret['id']
          }
        ],
        totPoint,
        false
    );

    // try{
    //     await Stripe.instance.confirmPaymentSheetPayment();
    // }catch (e){
    //   print(e);
    // }

    // const dep = DependencyFactoryImpl();
    // Dio dio = dep.createDioForApiCart().dio;
    // var codeInfo = await dio.request(
    //   '/wp-json/wc/v3/orders/$orderId',
    //   data: {
    //     // "transaction_id" : "",
    //     "status": "processing",
    //   },
    //   options: Options(
    //     method: 'PUT',
    //   ),
    // );


// ignore: use_build_context_synchronously
    _showSuccess(context);
  } catch(err){
     _showFail(context);
    throw Exception(err.toString());
    
  }
  //whsec_dOfPsPoemTpFViFSfkh3B61rBiCZZtz2
  } 
  static Future<void> _initializePaymentSheet(String clientSecret, UserAddress billing, int customerId) async {
    var a = await Stripe.instance.initPaymentSheet(
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
              address: Address(city: billing.city, country: "IT", line1: billing.address_1, line2: billing.address_2, postalCode: billing.postcode, state: billing.state,)
            ),
      ));
    print(a?.image ?? "");
  }

  static Future<dynamic> _getClientSecret(amount, currency, int orderId, UserAddress shipping, String orderNumber, int userId) async {

   print(amount);
   print(currency);
   print(AppConfig.secretKeyStripe);
   String newAmount = amount.toString();
   String body = "amount=$newAmount&capture_method=${"automatic"}&confirm=${"false"}&confirmation_method=${"automatic"}&payment_method_options[card[request_three_d_secure]]=${"any"}&payment_method_types[0]=${"card"}&currency=$currency&metadata[order_id]=$orderId&metadata[order_number]=$orderNumber&metadata[user_id]=$userId&metadata[gateway_id]=stripe_cc&metadata[webhook_id]=${AppConfig.webHookId}&shipping[address[city]]=${shipping.city}&shipping[address[country]]=${shipping.country}&shipping[address[line1]]=${shipping.address_1}&shipping[address[postal_code]]=${shipping.postcode}&shipping[address[state]]=${shipping.state}&shipping[name]=${shipping.first_name} ${shipping.last_name}";

    Dio dio= Dio();
    var response = await dio.post(AppConfig.stripeEndPoint,
    options: Options(
      headers: {
          'Authorization': 'Bearer ${AppConfig.secretKeyStripe}',
          'Content-Type': 'application/x-www-form-urlencoded'
        },       
     ),
     data: body
    );
      return response.data;
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