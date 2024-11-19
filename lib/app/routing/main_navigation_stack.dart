import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

import 'main_navigation.dart';

class MainNavigationStack with ChangeNotifier {
  List<MainNavigation> _items;
  MainNavigationStack(List<MainNavigation> items) : _items = List.of(items);

  UnmodifiableListView<MainNavigation> get items =>
      UnmodifiableListView(_items);
  set items(List<MainNavigation> newItems) {
    _items = List.from(newItems);
    notifyListeners();
  }

  void push(MainNavigation item) {
    _items.add(item);
    notifyListeners();
  }

  MainNavigation? pop() {
    LocalStorage storage = LocalStorage();

    if (kDebugMode) {
      print('MainNavigation  @#@#@#@ #@#@#@#@# @# @#@ #@# @# @# @# @ # #@ #@ @# pop invoked');
    }
    if (kDebugMode) {
      print(_items);
    }
    if (kDebugMode) {
      print(_items.last);
    }


    //return null;
    if(_items.length>1) {
      try {
        final poppedItem = _items.removeLast();

        Future.wait([storage.setBottomTabState(0)]);
        if (kDebugMode) {
          print('-- ${_items.last.toString()}');
        }
        if( (_items.last.toString()).contains('MainNavigation.wishList') ) {
          Future.wait([storage.setBottomTabState(5)]);
        }
        if( (_items.last.toString()).contains('MainNavigation.account') ) {
          Future.wait([storage.setBottomTabState(0)]);
        }
        if( (_items.last.toString()).contains('MainNavigation.cart') ) {
          Future.wait([storage.setBottomTabState(6)]);
        }

        notifyListeners();
        return poppedItem;
      } catch (e) {
        return null;
      }
    }
    return null;

  }
}
