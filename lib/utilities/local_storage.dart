import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';


part 'local_storage.g.dart';

@HiveType(typeId: 1)
class LocalStorage {
  LocalStorage({this.localStorage});

  @HiveField(0)
  String? localStorage;

  @override
  String toString() {
    return localStorage ?? "";
  }

  Future<Box> openBox() async {
    return await Hive.openBox('DVBox');
  }

  Future<void> setproducts(List<dynamic> products) async {
    var box = await openBox();
    box.put('products', products);
  }

  Future<List<dynamic>?> getproducts() async {
    var box = await openBox();
    var wl = await box.get('products');
    return wl;
  }

  Future<void> deleteproducts() async {
    var box = await openBox();
    box.delete('products');
  }

  Future<List<int>?> getWishList() async {
    var box = await openBox();
    var wl = await box.get('wishlist');
    //print('### DARIO GET WISH');
    //print(wl);
    return wl ?? <int>[];
  }

  Future<void> setWishLIst(List<int> wishLIstIds) async {
    var box = await openBox();
    box.put('wishlist', wishLIstIds);
  }

  Future<String?> getTokenId() async {
    var box = await openBox();
    // print('@@@@@@@@@@@@@@@@@@@@ GET TOKEN ID ####################################');
    // print('--${box.get('tokenId')}--');
    // print('//@@@@@@@@@@@@@@@@@@@@ GET TOKEN ID ####################################');
    return box.get('tokenId');
  }

  Future<void> setTokenId(String token) async {
    var box = await openBox();

    // print('#################### SET TOKEN ID ####################################');
    // print(token);
    // print('//#################### SET TOKEN ID ####################################');

    box.put('tokenId', token);
  }



  Future<String?> getDeviceId() async {
    var box = await openBox();
    if (kDebugMode) {
      print('storage deviceId');
    }
    if (kDebugMode) {
      print(box.get('deviceId'));
    }
    return box.get('deviceId');
  }

  Future<void> setDeviceId(String token) async {
    var box = await openBox();

    if (kDebugMode) {
      print('storage SETdeviceId');
    }
    if (kDebugMode) {
      print(token);
    }
    //print(token.runtimeType);
    box.put('deviceId', token);
  }


  Future<void> deleteTokenId() async {
    var box = await openBox();
    box.delete('tokenId');
  }

  Future<String> getUserName() async {
    var box = await openBox();
    return box.get('username') ?? "";
  }

  Future<void> setUserName(String userName) async {
    var box = await openBox();
    box.put('username', userName);
  }

  Future<void> deleteUserName() async {
    var box = await openBox();
    box.delete('username');
  }

  Future<String> getPassword() async {
    var box = await openBox();
    return box.get('password') ?? "";
  }

  Future<void> setPassword(String password) async {
    var box = await openBox();
    box.put('password', password);
  }

  Future<void> deletePassword() async {
    var box = await openBox();
    box.delete('password');
  }

  Future<String?> getUserEmail() async {
    var box = await openBox();
    if (kDebugMode) {
      print('#################### getUserEmail ####################################');
    }
    if (kDebugMode) {
      print(box.get('email'));
    }
    if (kDebugMode) {
      print('//#################### getUserEmail ####################################');
    }

    return box.get('email');
  }

  Future<void> setUserEmail(String email) async {

    if (kDebugMode) {
      print('#################### setUserEmail ####################################');
    }
    if (kDebugMode) {
      print(email);
    }
    if (kDebugMode) {
      print('//#################### setUserEmail ####################################');
    }

    var box = await openBox();
    box.put('email', email);
  }

  Future<void> deleteUserEmail() async {
    var box = await openBox();
    box.delete('email');
  }


  Future<int> getCustomerId() async {
    var box = await openBox();
    return box.get('customerId');
  }

  Future<void> setCustomerId(int customer_id) async {
    var box = await openBox();
    box.put('customerId', customer_id);
  }

  Future<String?> getFCMToken() async {
    var box = await openBox();
    return box.get('fcm_token');
  }

  Future<void> setFCMToken(String token) async {
    var box = await openBox();
    box.put('fcm_token', token);
  }

  Future<void> deleteFilters() async {
    var box = await openBox();
    box.delete('filters');
    box.delete('priceFilters');
  }

  Future<List<Map<String, bool>>?>? getFilters() async {
    var box = await openBox();
    var filters = box.get('filters');
    //print("#### DARIO GETFILTERS");
    //print(filters);
    //print(filters.runtimeType);

    return filters ;
  }

  Future<RangeValues> getPriceFilters() async {
    var box = await openBox();
    var filters = box.get('priceFilters');
    if(filters!=null && filters!='') {
      var splitFilters = filters.split('|*|');
      return RangeValues(double.tryParse(splitFilters[0])!, double.tryParse(splitFilters[1])!);
    }
    return const RangeValues(0, 100);
  }

  Future<void> setFilters(
      Map<String, bool> categoriesMap, Map<String, bool> tagsMap) async {
    var box = await openBox();
    box.put('filters', [categoriesMap, tagsMap]);
  }

  Future<void> setPriceFilters(
      RangeValues priceFilters) async {
    var box = await openBox();
    box.put('priceFilters', '${priceFilters.start}|*|${priceFilters.end}');
  }

  Future<void> deleteFCMToken() async {
    var box = await openBox();
    box.delete('fcm_token');
  }

  Future<int> getTotalCartItems() async {
    var box = await openBox();
    return box.get('cart') ?? 0;
  }

  Future<void> setTotalCartItems(int total) async {
    var box = await openBox();
    box.put('cart', total);
  }

  Future<void> deleteTotalCartItems(int total) async {
    var box = await openBox();
    box.delete('cart');
  }

  Future<List<Map<dynamic, dynamic>>?>? getNewAddress() async {
    var box = await openBox();
    List<Map<dynamic, dynamic>> address = <Map<dynamic, dynamic>>[];
    address.addAll(box.get('address'));
    return address;
  }

  Future<void> setNewAddress(Map<String, String> addressData) async {
    var box = await openBox();
    box.put('address', addressData);
  }

  Future<void> deleteNewAddress() async {
    var box = await openBox();
    box.delete('address');
  }

  Future<String?> getCoupons(String code) async {
    var box = await openBox();
    return box.get('coupons');
  }


  Future<int>? getBottomTabState() async {
    var box = await openBox();
    var tabState = box.get('bottomtabstate');
    if (tabState!=null) {
      return box.get('bottomtabstate');
    }
    return 0;
  }

  Future<void> setBottomTabState(int tabState) async {
    var box = await openBox();
    box.put('bottomtabstate', tabState);
  }

  Future<int>? getTabState() async {
    var box = await openBox();
    var tabState = box.get('tabstate');
    if (tabState!=null) {
      return box.get('tabstate');
    }
    return 0;
  }

  Future<void> setTabState(int tabState) async {
    var box = await openBox();
    box.put('tabstate', tabState);
  }


}
