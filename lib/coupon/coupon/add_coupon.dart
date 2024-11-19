import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';
import '../../all_products/model/request/wishlist_products.dart';
import '../../all_products/model/response/all_products_response.dart';
import '../../app/app_config.dart';
import '../../app/dependency_injection/dependency_factory_impl.dart';

void printWrapped(String text) {
  final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
  if (kDebugMode) {
    print('!!!!!!! PRINT WRAPPED ################################################');
  }
  pattern.allMatches(text).forEach((match) => print(match.group(0)));
  if (kDebugMode) {
    print('///////// PRINT WRAPPED ################################################');
  }
}


// Future<addCouponResponse?> addCouponToCart(String couponCode) async {
//
//   const dep = DependencyFactoryImpl();
//
//   Dio dio= dep.createDioForApi().dio;
//
//   try {
//     var delete = await dio.delete(
//       '/wp-json/wc/store/v1/cart/coupons?code=$couponCode',
//     );
//
//     print('delete');
//     print(delete);
//
//     await Future.delayed(Duration(seconds: 1));
//
//
//     try {
//
//       var response = await dio.post(
//         '/wp-json/wc/store/v1/cart/coupons?code=$couponCode',
//       );
//
//       if (response.statusCode == 201 || response.statusCode == 200) {
//
//         var couponInfo = response.data[0];
//         return addCouponResponse.fromJson(response.data);
//       }
//       else {
//       }
//
//
//     } on DioError catch (e) {
//
//       if (e.response != null) {
//
//
//         if (
//         e.response!.statusCode == 400 &&
//             e.response!.data['code']! == 'woocommerce_rest_cart_coupon_error'
//             && e.response!.data['message'].contains('stato applicato')
//         ) {
//           var codeInfo = await dio.request(
//             '/wp-json/wc/store/v1/cart/coupons?code=$couponCode',
//             options: Options(
//               method: 'GET',
//             ),
//           );
//           var couponInfo = codeInfo.data[0];
//           return addCouponResponse.fromJson(couponInfo);
//         }
//
//       } else {
//       }
//     }
//   }
//
//   on DioError catch (e) {
//     if (e.response != null) {
//     } else {
//     }
//
//
//   }
//
//   return null;
// }
Future<addCouponResponse?> addCouponToCart(String couponCode) async {

  const dep = DependencyFactoryImpl();

  Dio dio= dep.createDioForApi().dio;

  try {

    var response = await dio.post(
      '/wp-json/wc/store/v1/cart/coupons?code=$couponCode',
    );

    if (response.statusCode == 201 || response.statusCode == 200) {

      var couponInfo = response.data[0];
      return addCouponResponse.fromJson(response.data);
    }
    else {
    }


  } on DioError catch (e) {

    if (e.response != null) {


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
        return addCouponResponse.fromJson(couponInfo);
      }

    } else {
    }
  }

  return null;
}


Future<bool> deleteCouponFromCart(String couponCode) async {
  const dep = DependencyFactoryImpl();
  Dio dio = dep.createDioForApi().dio;

  try {
    var delete = await dio.delete(
      '/wp-json/wc/store/v1/cart/coupons?code=$couponCode',
    );
    if (delete.statusCode == 200 || delete.statusCode == 204) {
      if (kDebugMode) {
        print('Coupon deleted successfully');
      }
      return true;
    } else {
      if (kDebugMode) {
        print('Failed to delete coupon: ${delete.statusMessage}');
      }
      return false;
    }
  } on DioError catch (e) {
    if (e.response != null) {
      if (kDebugMode) {
        print('Error deleting coupon: ${e.response!.data}');
      }
      if (kDebugMode) {
        print('Status code: ${e.response!.statusCode}');
      }
      return false;
    } else {
      if (kDebugMode) {
        print('Request setup error: ${e.message}');
      }
      return false;
    }
  } catch (e) {
    if (kDebugMode) {
      print('Unexpected error: $e');
    }
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
