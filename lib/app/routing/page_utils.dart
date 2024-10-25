import 'package:flutter/material.dart';

class PageUtils {
  static List<Page> buildPages(List<Page> pages, Page pageToAdd) {
    var result = <Page>[];
    for (final page in pages) {
      if (page.key != pageToAdd.key) {
        result.add(page);
      } else {
        break;
      }
    }
    result.add(pageToAdd);
    return result;
  }

  // static List<Page> setBottomOfStack(List<Page> pages, Page pageToAdd) {
  //   if (pages.isEmpty) {
  //     return [pageToAdd];
  //   }

  //   if (pages.first.key != pageToAdd.key) {
  //     return [pageToAdd, ...pages];
  //   }

  //   return pages;
  // }
}
