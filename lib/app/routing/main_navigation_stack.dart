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
    Future.microtask(() {
      _items = List.from(newItems);
      notifyListeners();
    });
  }

  void push(MainNavigation item) {
    _items.add(item);
    notifyListeners();
  }

  MainNavigation? pop() {
    if (_items.length > 1) {
      final poppedItem = _items.removeLast();
      notifyListeners();
      return poppedItem;
    }
    return null;
  }
}
