import 'dart:convert';

import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';
import '../../all_products/model/request/wishlist_products.dart';
import '../../all_products/model/response/all_products_response.dart';
import '../../app/app_config.dart';
import '../../app/dependency_injection/dependency_factory_impl.dart';

void printWrapped(String text) {
  final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
  print('!!!!!!! PRINT WRAPPED ################################################');
  pattern.allMatches(text).forEach((match) => print(match.group(0)));
  print('///////// PRINT WRAPPED ################################################');
}


Future<addCouponResponse?> addCouponToCart(String couponCode) async {

  const dep = DependencyFactoryImpl();

  Dio dio= dep.createDioForApi().dio;




  // var test = await dio.request(
  //   '/wp-json/wc/store/v1/cart/',
  //   options: Options(
  //     method: 'GET',
  //   ),
  // );
  //print('@@@@@ CART STATUS ');
  //printWrapped((test.toString()));
  // print(jsonDecode(test.data)!['coupons']);
  // print(jsonDecode(test.data)!['coupons'].length);
  // print(jsonDecode(test.data)!['items']);
  //print('//@@@@@ CART STATUS ');

  // var delete = await dio.request(
  //   '/wp-json/wc/store/v1/cart/coupons?code=$couponCode',
  //   options: Options(
  //     method: 'DELETE',
  //   ),
  // );
  //
  // print('delete');
  // print(delete);
  //
  // await Future.delayed(Duration(seconds: 1));

  //print('addCouponToCart');
  //print(couponCode);

  // var response = await dio.post(
  //   '/wp-json/wc/store/v1/cart/coupons?code=$couponCode',
  //   queryParameters: {
  //     "code": "$couponCode"
  //   }
  // );
  //
  // // print(response);
  // // print(response.statusCode);
  // // print('addCouponToCart error');
  // // print(response.statusMessage);
  //
  // print('##################################');
  // //print(response.data);
  // print(response.statusCode);
  // print('##################################');
  // if (
  // response.statusCode == 201 ||
  //     response.statusCode == 200
  // ) {
  //   //printWrapped(json.encode(response.data));
  //   print('addCouponToCart completed 1');
  //   return addCouponResponse.fromJson(response.data);
  // }
  //
  // if (
  // response.statusCode == 400 &&
  //     response!.data['code']! == 'woocommerce_rest_cart_coupon_error'
  //     && response!.data['message'].contains('stato applicato')
  // ) {
  //   var codeInfo = await dio.request(
  //     '/wp-json/wc/store/v1/cart/coupons?code=$couponCode',
  //     options: Options(
  //       method: 'GET',
  //     ),
  //   );
  //   printWrapped(json.encode(codeInfo.data));
  //   print('addCouponToCart completed 2');
  //   return addCouponResponse.fromJson(codeInfo.data);
  //
  // }  else {
  //   print('addCouponToCart error');
  //   print(response.statusMessage);
  // }


  try {
    var delete = await dio.delete(
      '/wp-json/wc/store/v1/cart/coupons?code=$couponCode',
    );

    print('delete');
    print(delete);

    await Future.delayed(Duration(seconds: 1));


    // print(response);
    // print(response.statusCode);
    // print('addCouponToCart error');
    // print(response.statusMessage);

    // print('##################################');
    // print(json.encode(response.data));
    // print(response.statusCode);
    // print('##################################');



    try {

      var response = await dio.post(
        '/wp-json/wc/store/v1/cart/coupons?code=$couponCode',

      );

      // print(response);
      // print(response.statusCode);
      // print('addCouponToCart error');
      // print(response.statusMessage);

      // print('##################################');
      // print(json.encode(response.data));
      // print(response.statusCode);
      // print('##################################');
      if (response.statusCode == 201 || response.statusCode == 200) {
        //printWrapped(json.encode(response.data));

        var couponInfo = response.data[0];
        return addCouponResponse.fromJson(response.data);
      }
      else {
        // print('addCouponToCart error');
        // print(response.statusMessage);
      }


    } on DioError catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      //print('ERROR POST /wp-json/wc/store/v1/cart/coupons?code=$couponCode');
      if (e.response != null) {
        // print(e.response!.data);
        // print(e.response!.data['code']);
        // print(e.response!.data['message']);


        if (
        e.response!.statusCode == 400 &&
            e.response!.data['code']! == 'woocommerce_rest_cart_coupon_error'
            && e.response!.data['message'].contains('stato applicato')
        ) {
          var codeInfo = await dio.request(
            '/wp-json/wc/store/v1/cart/coupons?code=$couponCode',
            options: Options(
              method: 'GET',
            ),
          );
          var couponInfo = codeInfo.data[0];

          // printWrapped(json.encode(codeInfo.data));

          // print( couponInfo.runtimeType );
          //
          // print('addCouponToCart completed 2');
          return addCouponResponse.fromJson(couponInfo);
        }

      } else {
        // Something happened in setting up or sending the request that triggered an Error
       // print(e.requestOptions);
       // print(e.message);
      }


    }


  }

  on DioError catch (e) {
    // The request was made and the server responded with a status code
    // that falls out of the range of 2xx and is also not 304.
    //print('ERROR DELETE /wp-json/wc/store/v1/cart/coupons?code=$couponCode');
    if (e.response != null) {
      // print(e.response!.data);
      // print(e.response!.headers);
      // print(e.response!.requestOptions);
    } else {
      // Something happened in setting up or sending the request that triggered an Error
      // print(e.requestOptions);
      // print(e.message);
    }


  }



  // print('//doGetWlProducts');
  // print(wishListProducts);
  //print('addCouponToCart completed 3');
  return null;
}

// To parse this JSON data, do
//
//     final couponResponse = couponResponseFromJson(jsonString);

Future<bool> deleteCouponFromCart(String couponCode) async {
  const dep = DependencyFactoryImpl();
  Dio dio = dep.createDioForApi().dio;

  try {
    // Attempt to delete the coupon from the cart
    var delete = await dio.delete(
      '/wp-json/wc/store/v1/cart/coupons?code=$couponCode',
    );

    // If the request was successful, return true
    if (delete.statusCode == 200 || delete.statusCode == 204) {
      print('Coupon deleted successfully');
      return true;
    } else {
      // If the server responded but with an unexpected status code, log it
      print('Failed to delete coupon: ${delete.statusMessage}');
      return false;
    }
  } on DioError catch (e) {
    // Handle DioError for different scenarios
    if (e.response != null) {
      // The request was made and the server responded with a status code outside the 2xx range
      print('Error deleting coupon: ${e.response!.data}');
      print('Status code: ${e.response!.statusCode}');
      return false;
    } else {
      // Something happened in setting up the request that triggered an error
      print('Request setup error: ${e.message}');
      return false;
    }
  } catch (e) {
    // Catch any other exceptions
    print('Unexpected error: $e');
    return false;
  }
}


addCouponResponse couponResponseFromJson(String str) => addCouponResponse.fromJson(json.decode(str));

String couponResponseToJson(addCouponResponse data) => json.encode(data.toJson());

class addCouponResponse {
  String code;
  String discountType;
  Totals totals;

  addCouponResponse({
    required this.code,
    required this.discountType,
    required this.totals,
  });

  factory addCouponResponse.fromJson(Map<String, dynamic> json) => addCouponResponse(
    code: json["code"],
    discountType: json["discount_type"],
    totals: Totals.fromJson(json["totals"]),
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "discount_type": discountType,
    "totals": totals.toJson(),
  };
}

class Totals {
  String totalDiscount;
  String totalDiscountTax;
  String currencyCode;
  String currencySymbol;
  int currencyMinorUnit;
  String currencyDecimalSeparator;
  String currencyThousandSeparator;
  String currencyPrefix;
  String currencySuffix;

  Totals({
    required this.totalDiscount,
    required this.totalDiscountTax,
    required this.currencyCode,
    required this.currencySymbol,
    required this.currencyMinorUnit,
    required this.currencyDecimalSeparator,
    required this.currencyThousandSeparator,
    required this.currencyPrefix,
    required this.currencySuffix,
  });

  factory Totals.fromJson(Map<String, dynamic> json) => Totals(
    totalDiscount: json["total_discount"],
    totalDiscountTax: json["total_discount_tax"],
    currencyCode: json["currency_code"],
    currencySymbol: json["currency_symbol"],
    currencyMinorUnit: json["currency_minor_unit"],
    currencyDecimalSeparator: json["currency_decimal_separator"],
    currencyThousandSeparator: json["currency_thousand_separator"],
    currencyPrefix: json["currency_prefix"],
    currencySuffix: json["currency_suffix"],
  );

  Map<String, dynamic> toJson() => {
    "total_discount": totalDiscount,
    "total_discount_tax": totalDiscountTax,
    "currency_code": currencyCode,
    "currency_symbol": currencySymbol,
    "currency_minor_unit": currencyMinorUnit,
    "currency_decimal_separator": currencyDecimalSeparator,
    "currency_thousand_separator": currencyThousandSeparator,
    "currency_prefix": currencyPrefix,
    "currency_suffix": currencySuffix,
  };
}
