// import 'dart:core';
import 'package:isar/isar.dart';

part 'db_products.g.dart';

@collection
class dbProductsIsar {
  // dbProducts(
  //     this.id,
  //     this.productId,
  //     this.price,
  //     this.regular_price,
  //     this.description,
  //     this.type,
  //     this.on_sale,
  //     this.short_description,
  //     this.average_rating,
  //     this.weight,
  //     this.featured,
  //     this.bundle_min_size,
  //     this.bundle_max_size,
  //     // this.bundle_stock_status,
  //     // this.bundle_stock_quantity,
  //     // this.images,
  //     // this.tags,
  //     // this.meta_data,
  //     // this.categories,
  //     // this.bundled_items,
  //     );dbProducts(
  //     this.id,
  //     this.productId,
  //     this.price,
  //     this.regular_price,
  //     this.description,
  //     this.type,
  //     this.on_sale,
  //     this.short_description,
  //     this.average_rating,
  //     this.weight,
  //     this.featured,
  //     this.bundle_min_size,
  //     this.bundle_max_size,
  //     // this.bundle_stock_status,
  //     // this.bundle_stock_quantity,
  //     // this.images,
  //     // this.tags,
  //     // this.meta_data,
  //     // this.categories,
  //     // this.bundled_items,
  //     );
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment
  //@Index(type: IndexType.value)
  int? productId;
  String? title;
  String? price;
  String? regular_price;
  String? description;
  String? type;
  bool? on_sale;
  String? short_description;
  String? average_rating;
  String? weight;
  bool? featured;
  int? bundle_min_size;
  int? bundle_max_size;
  String? bundle_stock_status;
  String? bundle_stock_quantity;
  List<ImageProduct>? images;
  List<ProductTags>? tags;
  List<MetaData>? meta_data;
  List<ProductCategories>? categories;
  List<BundledItems>? bundled_items;
}

@embedded
class ImageProduct {
  int? id;
  String? src;
}


@embedded
class ProductTags {
  int? id;
  String? name;
  String? slug;
}

@embedded
class ProductCategories {
  int? id;
  String? name;
  String? slug;
  ImageCategory? image;
}

@embedded
class ImageCategory {
  int? id;
  String? src;
}



@embedded
class MetaData {
  int? id;
      String? key;
      //@ignore
      String? value;
}



@embedded
class BundledItems {
  int? bundled_item_id;
  int? product_id;
  int? menu_order;
  int? quantity_min;
  int? quantity_max;
  int? quantity_default;
  bool? priced_individually;
  bool? shipped_individually;
  bool? override_title;
  bool? override_description;
  String? description;
   bool? optional;
   bool? hide_thumbnail;
   String? discount;
   bool? override_variations;
  //allowed_variations: [];
   bool? override_default_variation_attributes;
  //default_variation_attributes: [];
   String? title;
   String? single_product_visibility;
   String? cart_visibility;
   String? order_visibility;
   String? single_product_price_visibility;
   String? cart_price_visibility;
   String? order_price_visibility;
   String? stock_status;
}

