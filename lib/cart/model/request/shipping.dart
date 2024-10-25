import 'dart:convert';
import 'dart:core';

import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';
import '../../../app/app_config.dart';
import '../../../app/dependency_injection/dependency_factory_impl.dart';


Future<List<ShippingMethod?>> processShippingMethods(String postcode) async {

  var sz = await shippingZonesServices().getShippingZones();
  var sl = await shippingZonesServices().getShippingLocations(sz);
  List<ShippingMethod?> sm = [];
  //String postcode = '66034';
  //postcode = '57031';

  String matchedZone = '';
  String defaultZone = '';

  //print(sl);

  if(sl!=null) {


    sl.forEach((location){
      //print('###SHIPPING ZONE ${location['id']} #######################');
      //print(location);

      if(location['locations'].length ==1 && location['locations'][0].type == 'country' && location['locations'][0].code == 'IT') {
        defaultZone = location['id'].toString();
      }

      // defaultZone = location['locations'].lastWhere((val) => val.type == 'country' && val.code == 'IT' )['id'];

      //location['locations'].where((val) => val.type == 'postcode' ).forEach((values){
      location['locations'].forEach((values){
        if(values!.type == 'postcode') {
          //print('@#@#@# POSTCODE - ${values!.code}');
          if( (values!.code).contains('...') ) {
            var splitCodes = (values!.code).split('...');
            if(num.tryParse(postcode)!  >= num.tryParse(splitCodes.first)! && num.tryParse(postcode)!  <= num.tryParse(splitCodes.last)!) {
              matchedZone = location['id'].toString();
            }

          } else {
            if (postcode == values!.code) {
              matchedZone = location['id'].toString();
            }
          }
        }
      });

    });

    // print('###MATCH  ZONE ${matchedZone} #######################');
    // print(matchedZone=='');
    // print('###DEFAULT ZONE ${defaultZone} #######################');
    sm = await shippingZonesServices().getShippingMethods(matchedZone==''?defaultZone:matchedZone,postcode);
  }
  return sm;
}


class shippingZonesServices {

  static DependencyFactoryImpl dep = DependencyFactoryImpl();
  Dio dio= dep.createDioForApi().dio;


  Future<List<ShippingZone?>> getShippingZones() async {

    List<ShippingZone?> zones = [];
    LocalStorage wishList = LocalStorage();
    // List<int> wl = [];
    // wl = await wishList.getWishList() ?? [];

    // print('${AppConfig.baseUrl}/wp-json/wc/v3/shipping/zones/');
    // print(dio.options.baseUrl);
    // print(dio.options.headers);

    var response = await dio.request(
      '/wp-json/wc/v3/shipping/zones/?orderby=order',
      options: Options(
        method: 'GET',
      ),
    );

    // print('##################################');
    // print(json.encode(response.data));
    // print(response.data.runtimeType);
    //
    // print(response.statusCode);
    // print('##################################');

    if (response.statusCode == 200) {
      //print(json.encode(response.data));
      List resData = response.data;
      int idx=0;
      for(idx=0;idx<resData.length;idx++) {
        // print(response.data[idx]);
        // print('sz');
        // print(response.data[idx].runtimeType);
        zones.add(ShippingZone.fromJson(response.data[idx]));

      }

    }
    else {
      print(response.statusMessage);
    }

    // print('//getShippingZones');
    // print(zones);

    return zones;
  }

  Future<List<Map<String,dynamic>>> getShippingLocations(List<ShippingZone?> shippingZones) async {

    List<ShippingLocation?> shippinglocations = [];
    List<Map<String,dynamic>> shippinglocs = [];

  await Future.wait(shippingZones.map((sz) async {
  // print('${AppConfig.baseUrl}/wp-json/wc/v3/shipping/zones/${sz?.id}/locations');
  // print(dio.options.baseUrl);
  // print(dio.options.headers);

  var response = await dio.request(
  '/wp-json/wc/v3/shipping/zones/${sz?.id}/locations',
  options: Options(
  method: 'GET',
  ),
  );

  // print('##################################');
  // print(json.encode(response.data));
  // print(response.statusCode);
  // print('##################################');
  if (response.statusCode == 200 && response.data.length >0 ) {
  //print(json.encode(response.data));
    List resData = response.data;

    shippinglocs.add({ 'id': sz?.id as int, 'locations' : [] });

    int idx=0;
    for(idx=0;idx<resData.length;idx++) {
      // print(response.data[idx]);
      // print('sz');
      // print(response.data[idx].runtimeType);
      shippinglocs.last['locations'].add(ShippingLocation.fromJson(response.data[idx])) ;



      //shippinglocs.add({ sz?.id as int : ShippingLocation.fromJson(response.data[idx]) });

      shippinglocations.add(ShippingLocation.fromJson(response.data[idx]));
    }

  }
  else {
  print(response.statusMessage);
  }
  //AllProductsResponse resp = await WishlistService(dio).wishListProducts(WishlistProductsRequest(id: wishItem));
  // if(resp.products!=null) {
  //   wishListProducts.addAll(resp.products as Iterable<Product?>);
  // }
  })
  );


    // print('//getShippingLocations');
    // print(shippinglocs);
    // print(shippinglocations);

    return shippinglocs;
  }



  Future<List<ShippingMethod?>> getShippingMethods(String zoneId,String postcode) async {

    List<ShippingMethod?> shippingMethods = [];

    var response = await dio.request(
      '/wp-json/wc/v3/shipping/zones/${zoneId}/methods',
      options: Options(
        method: 'GET',
      ),
    );

    // print('##################################');
    // print(json.encode(response.data));
    // print(response.statusCode);
    // print('##################################');
    if (response.statusCode == 200 && response.data.length >0 ) {
      //print(json.encode(response.data));
      List resData = response.data;
      int postcodeNum = int.tryParse(postcode) as int;

      int idx=0;
      for(idx=0;idx<resData.length;idx++) {
        //print(response.data[idx]);
        //print('sm');
        //print(response.data[idx]['enabled'].runtimeType);
        if(response.data[idx]['enabled']) {


          //RITIRO IN SEDE
          //local_pickup
          //pescara 65100, da 65121 a 65129, da 65010 a 65029
          //teramo 64100 e da 64010 a 64049
          //chieti 66100 e da 66010 a 66054
          if(response.data[idx]['"method_id'] == 'local_pickup') {
            if(
              //pescara
              postcodeNum == 65100
              || (postcodeNum >= 65121 && postcodeNum <= 65129)
              || (postcodeNum >= 65010 && postcodeNum <= 65029)
              //teramo
              || postcodeNum == 64100
              || (postcodeNum >= 64010 && postcodeNum <= 64049)
              //chieti
              || postcodeNum == 66100
              || (postcodeNum >= 66010 && postcodeNum <= 66054)
            ){
              shippingMethods.add(ShippingMethod.fromJson(response.data[idx]));
            }
          } else {
            shippingMethods.add(ShippingMethod.fromJson(response.data[idx]));
          }



        }
      }

    }
    else {
      print(response.statusMessage);
    }



    // print('//getShippingMethods');
    // print(shippingMethods);

    return shippingMethods;
  }

}










// ### FACTORIES #####################################



class ShippingZone {
  int? id;
  String? name;
  int? order;

  ShippingZone({this.id, this.name, this.order});

  ShippingZone.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    order = json['order'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['order'] = this.order;
    return data;
  }
}



class ShippingLocation {
  String? code;
  String? type;

  ShippingLocation({this.code, this.type});

  ShippingLocation.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['type'] = this.type;
    return data;
  }
}







class ShippingMethod {
  int? id;
  int? instanceId;
  String? title;
  int? order;
  bool? enabled;
  String? methodId;
  String? methodTitle;
  String? methodDescription;
  Settings? settings;

  ShippingMethod({this.id, this.instanceId, this.title, this.order, this.enabled, this.methodId, this.methodTitle, this.methodDescription, this.settings});

  ShippingMethod.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    instanceId = json['instance_id'];
    title = json['title'];
    order = json['order'];
    enabled = json['enabled'];
    methodId = json['method_id'];
    methodTitle = json['method_title'];
    methodDescription = json['method_description'];
    settings = json['settings'] != null ? new Settings.fromJson(json['settings']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['instance_id'] = this.instanceId;
    data['title'] = this.title;
    data['order'] = this.order;
    data['enabled'] = this.enabled;
    data['method_id'] = this.methodId;
    data['method_title'] = this.methodTitle;
    data['method_description'] = this.methodDescription;
    if (this.settings != null) {
      data['settings'] = this.settings!.toJson();
    }
    return data;
  }
}

class Settings {
  Title? title;
  Requires? requires;
  Title? minAmount;
  Title? ignoreDiscounts;
  Requires? taxStatus;
  Title? cost;
  Title? classCosts;
  Title? classCost1914;
  Title? classCost85;
  Title? classCost86;
  Title? classCost1875;
  Title? noClassCost;
  Requires? type;
  Requires? pricesIncludeTax;
  Title? orderHandlingFee;
  Title? maxShippingCost;
  Rates? rates;
  Requires? calculationType;
  Title? handlingFee;
  Title? minCost;
  Title? maxCost;
  Title? minmaxAfterDiscount;
  Title? minmaxWithTax;

  Settings({this.title, this.requires, this.minAmount, this.ignoreDiscounts, this.taxStatus, this.cost, this.classCosts, this.classCost1914, this.classCost85, this.classCost86, this.classCost1875, this.noClassCost, this.type, this.pricesIncludeTax, this.orderHandlingFee, this.maxShippingCost, this.rates, this.calculationType, this.handlingFee, this.minCost, this.maxCost, this.minmaxAfterDiscount, this.minmaxWithTax});

  Settings.fromJson(Map<String, dynamic> json) {
    title = json['title'] != null ? new Title.fromJson(json['title']) : null;
    requires = json['requires'] != null ? new Requires.fromJson(json['requires']) : null;
    minAmount = json['min_amount'] != null ? new Title.fromJson(json['min_amount']) : null;
    ignoreDiscounts = json['ignore_discounts'] != null ? new Title.fromJson(json['ignore_discounts']) : null;
    taxStatus = json['tax_status'] != null ? new Requires.fromJson(json['tax_status']) : null;
    cost = json['cost'] != null ? new Title.fromJson(json['cost']) : null;
    classCosts = json['class_costs'] != null ? new Title.fromJson(json['class_costs']) : null;
    classCost1914 = json['class_cost_1914'] != null ? new Title.fromJson(json['class_cost_1914']) : null;
    classCost85 = json['class_cost_85'] != null ? new Title.fromJson(json['class_cost_85']) : null;
    classCost86 = json['class_cost_86'] != null ? new Title.fromJson(json['class_cost_86']) : null;
    classCost1875 = json['class_cost_1875'] != null ? new Title.fromJson(json['class_cost_1875']) : null;
    noClassCost = json['no_class_cost'] != null ? new Title.fromJson(json['no_class_cost']) : null;
    type = json['type'] != null ? new Requires.fromJson(json['type']) : null;
    pricesIncludeTax = json['prices_include_tax'] != null ? new Requires.fromJson(json['prices_include_tax']) : null;
    orderHandlingFee = json['order_handling_fee'] != null ? new Title.fromJson(json['order_handling_fee']) : null;
    maxShippingCost = json['max_shipping_cost'] != null ? new Title.fromJson(json['max_shipping_cost']) : null;
    rates = json['rates'] != null ? new Rates.fromJson(json['rates']) : null;
    calculationType = json['calculation_type'] != null ? new Requires.fromJson(json['calculation_type']) : null;
    handlingFee = json['handling_fee'] != null ? new Title.fromJson(json['handling_fee']) : null;
    minCost = json['min_cost'] != null ? new Title.fromJson(json['min_cost']) : null;
    maxCost = json['max_cost'] != null ? new Title.fromJson(json['max_cost']) : null;
    minmaxAfterDiscount = json['minmax_after_discount'] != null ? new Title.fromJson(json['minmax_after_discount']) : null;
    minmaxWithTax = json['minmax_with_tax'] != null ? new Title.fromJson(json['minmax_with_tax']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.title != null) {
      data['title'] = this.title!.toJson();
    }
    if (this.requires != null) {
      data['requires'] = this.requires!.toJson();
    }
    if (this.minAmount != null) {
      data['min_amount'] = this.minAmount!.toJson();
    }
    if (this.ignoreDiscounts != null) {
      data['ignore_discounts'] = this.ignoreDiscounts!.toJson();
    }
    if (this.taxStatus != null) {
      data['tax_status'] = this.taxStatus!.toJson();
    }
    if (this.cost != null) {
      data['cost'] = this.cost!.toJson();
    }
    if (this.classCosts != null) {
      data['class_costs'] = this.classCosts!.toJson();
    }
    if (this.classCost1914 != null) {
      data['class_cost_1914'] = this.classCost1914!.toJson();
    }
    if (this.classCost85 != null) {
      data['class_cost_85'] = this.classCost85!.toJson();
    }
    if (this.classCost86 != null) {
      data['class_cost_86'] = this.classCost86!.toJson();
    }
    if (this.classCost1875 != null) {
      data['class_cost_1875'] = this.classCost1875!.toJson();
    }
    if (this.noClassCost != null) {
      data['no_class_cost'] = this.noClassCost!.toJson();
    }
    if (this.type != null) {
      data['type'] = this.type!.toJson();
    }
    if (this.pricesIncludeTax != null) {
      data['prices_include_tax'] = this.pricesIncludeTax!.toJson();
    }
    if (this.orderHandlingFee != null) {
      data['order_handling_fee'] = this.orderHandlingFee!.toJson();
    }
    if (this.maxShippingCost != null) {
      data['max_shipping_cost'] = this.maxShippingCost!.toJson();
    }
    if (this.rates != null) {
      data['rates'] = this.rates!.toJson();
    }
    if (this.calculationType != null) {
      data['calculation_type'] = this.calculationType!.toJson();
    }
    if (this.handlingFee != null) {
      data['handling_fee'] = this.handlingFee!.toJson();
    }
    if (this.minCost != null) {
      data['min_cost'] = this.minCost!.toJson();
    }
    if (this.maxCost != null) {
      data['max_cost'] = this.maxCost!.toJson();
    }
    if (this.minmaxAfterDiscount != null) {
      data['minmax_after_discount'] = this.minmaxAfterDiscount!.toJson();
    }
    if (this.minmaxWithTax != null) {
      data['minmax_with_tax'] = this.minmaxWithTax!.toJson();
    }
    return data;
  }
}

class Title {
  String? id;
  String? label;
  String? description;
  String? type;
  String? value;
  String? defaultValue;
  String? tip;
  String? placeholder;

  Title({this.id, this.label, this.description, this.type, this.value, this.defaultValue, this.tip, this.placeholder});

Title.fromJson(Map<String, dynamic> json) {
id = json['id'];
label = json['label'];
description = json['description'];
type = json['type'];
value = json['value'];
defaultValue = json['default'];
tip = json['tip'];
placeholder = json['placeholder'];
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = new Map<String, dynamic>();
data['id'] = this.id;
data['label'] = this.label;
data['description'] = this.description;
data['type'] = this.type;
data['value'] = this.value;
data['default'] = this.defaultValue;
data['tip'] = this.tip;
data['placeholder'] = this.placeholder;
return data;
}
}

class Requires {
String? id;
String? label;
String? description;
String? type;
String? value;
String? defaultValue;
String? tip;
String? placeholder;
MethodOptions? options;

Requires({this.id, this.label, this.description, this.type, this.value, this.defaultValue, this.tip, this.placeholder, this.options});

Requires.fromJson(Map<String, dynamic> json) {
id = json['id'];
label = json['label'];
description = json['description'];
type = json['type'];
value = json['value'];
defaultValue = json['default'];
tip = json['tip'];
placeholder = json['placeholder'];
options = json['options'] != null ? new MethodOptions.fromJson(json['options']) : null;
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = new Map<String, dynamic>();
data['id'] = this.id;
data['label'] = this.label;
data['description'] = this.description;
data['type'] = this.type;
data['value'] = this.value;
data['default'] = this.defaultValue;
data['tip'] = this.tip;
data['placeholder'] = this.placeholder;
if (this.options != null) {
data['options'] = this.options!.toJson();
}
return data;
}
}

class MethodOptions {
String? str;

MethodOptions({this.str});

MethodOptions.fromJson(Map<String, dynamic> json) {
str = json['str'];
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = new Map<String, dynamic>();
data['str'] = this.str;
return data;
}
}

class Rates {
String? id;
String? label;
String? description;
String? type;
Null? value;
String? defaultValue;
String? tip;
String? placeholder;

Rates({this.id, this.label, this.description, this.type, this.value, this.defaultValue, this.tip, this.placeholder});

Rates.fromJson(Map<String, dynamic> json) {
id = json['id'];
label = json['label'];
description = json['description'];
type = json['type'];
value = json['value'];
defaultValue = json['default'];
tip = json['tip'];
placeholder = json['placeholder'];
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = new Map<String, dynamic>();
data['id'] = this.id;
data['label'] = this.label;
data['description'] = this.description;
data['type'] = this.type;
data['value'] = this.value;
data['default'] = this.defaultValue;
data['tip'] = this.tip;
data['placeholder'] = this.placeholder;
return data;
}
}

class MethodSettings {
Title? title;
Requires? requires;
Title? minAmount;
Title? ignoreDiscounts;
Requires? taxStatus;
Title? cost;
Title? classCosts;
Title? classCost1914;
Title? classCost85;
Title? classCost86;
Title? classCost1875;
Title? noClassCost;
Requires? type;
Requires? pricesIncludeTax;
Title? orderHandlingFee;
Title? maxShippingCost;
Rates? rates;
Requires? calculationType;
Title? handlingFee;
Title? minCost;
Title? maxCost;
Title? minmaxAfterDiscount;
Title? minmaxWithTax;

MethodSettings({this.title, this.requires, this.minAmount, this.ignoreDiscounts, this.taxStatus, this.cost, this.classCosts, this.classCost1914, this.classCost85, this.classCost86, this.classCost1875, this.noClassCost, this.type, this.pricesIncludeTax, this.orderHandlingFee, this.maxShippingCost, this.rates, this.calculationType, this.handlingFee, this.minCost, this.maxCost, this.minmaxAfterDiscount, this.minmaxWithTax});

MethodSettings.fromJson(Map<String, dynamic> json) {
title = json['title'] != null ? new Title.fromJson(json['title']) : null;
requires = json['requires'] != null ? new Requires.fromJson(json['requires']) : null;
minAmount = json['min_amount'] != null ? new Title.fromJson(json['min_amount']) : null;
ignoreDiscounts = json['ignore_discounts'] != null ? new Title.fromJson(json['ignore_discounts']) : null;
taxStatus = json['tax_status'] != null ? new Requires.fromJson(json['tax_status']) : null;
cost = json['cost'] != null ? new Title.fromJson(json['cost']) : null;
classCosts = json['class_costs'] != null ? new Title.fromJson(json['class_costs']) : null;
classCost1914 = json['class_cost_1914'] != null ? new Title.fromJson(json['class_cost_1914']) : null;
classCost85 = json['class_cost_85'] != null ? new Title.fromJson(json['class_cost_85']) : null;
classCost86 = json['class_cost_86'] != null ? new Title.fromJson(json['class_cost_86']) : null;
classCost1875 = json['class_cost_1875'] != null ? new Title.fromJson(json['class_cost_1875']) : null;
noClassCost = json['no_class_cost'] != null ? new Title.fromJson(json['no_class_cost']) : null;
type = json['type'] != null ? new Requires.fromJson(json['type']) : null;
pricesIncludeTax = json['prices_include_tax'] != null ? new Requires.fromJson(json['prices_include_tax']) : null;
orderHandlingFee = json['order_handling_fee'] != null ? new Title.fromJson(json['order_handling_fee']) : null;
maxShippingCost = json['max_shipping_cost'] != null ? new Title.fromJson(json['max_shipping_cost']) : null;
rates = json['rates'] != null ? new Rates.fromJson(json['rates']) : null;
calculationType = json['calculation_type'] != null ? new Requires.fromJson(json['calculation_type']) : null;
handlingFee = json['handling_fee'] != null ? new Title.fromJson(json['handling_fee']) : null;
minCost = json['min_cost'] != null ? new Title.fromJson(json['min_cost']) : null;
maxCost = json['max_cost'] != null ? new Title.fromJson(json['max_cost']) : null;
minmaxAfterDiscount = json['minmax_after_discount'] != null ? new Title.fromJson(json['minmax_after_discount']) : null;
minmaxWithTax = json['minmax_with_tax'] != null ? new Title.fromJson(json['minmax_with_tax']) : null;
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = new Map<String, dynamic>();
if (this.title != null) {
data['title'] = this.title!.toJson();
}
if (this.requires != null) {
data['requires'] = this.requires!.toJson();
}
if (this.minAmount != null) {
data['min_amount'] = this.minAmount!.toJson();
}
if (this.ignoreDiscounts != null) {
data['ignore_discounts'] = this.ignoreDiscounts!.toJson();
}
if (this.taxStatus != null) {
data['tax_status'] = this.taxStatus!.toJson();
}
if (this.cost != null) {
data['cost'] = this.cost!.toJson();
}
if (this.classCosts != null) {
data['class_costs'] = this.classCosts!.toJson();
}
if (this.classCost1914 != null) {
data['class_cost_1914'] = this.classCost1914!.toJson();
}
if (this.classCost85 != null) {
data['class_cost_85'] = this.classCost85!.toJson();
}
if (this.classCost86 != null) {
data['class_cost_86'] = this.classCost86!.toJson();
}
if (this.classCost1875 != null) {
data['class_cost_1875'] = this.classCost1875!.toJson();
}
if (this.noClassCost != null) {
data['no_class_cost'] = this.noClassCost!.toJson();
}
if (this.type != null) {
data['type'] = this.type!.toJson();
}
if (this.pricesIncludeTax != null) {
data['prices_include_tax'] = this.pricesIncludeTax!.toJson();
}
if (this.orderHandlingFee != null) {
data['order_handling_fee'] = this.orderHandlingFee!.toJson();
}
if (this.maxShippingCost != null) {
data['max_shipping_cost'] = this.maxShippingCost!.toJson();
}
if (this.rates != null) {
data['rates'] = this.rates!.toJson();
}
if (this.calculationType != null) {
data['calculation_type'] = this.calculationType!.toJson();
}
if (this.handlingFee != null) {
data['handling_fee'] = this.handlingFee!.toJson();
}
if (this.minCost != null) {
data['min_cost'] = this.minCost!.toJson();
}
if (this.maxCost != null) {
data['max_cost'] = this.maxCost!.toJson();
}
if (this.minmaxAfterDiscount != null) {
data['minmax_after_discount'] = this.minmaxAfterDiscount!.toJson();
}
if (this.minmaxWithTax != null) {
data['minmax_with_tax'] = this.minmaxWithTax!.toJson();
}
return data;
}
}
