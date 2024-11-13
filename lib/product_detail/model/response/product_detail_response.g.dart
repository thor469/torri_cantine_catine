// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDetailResponse _$$_ProductDetailResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ProductDetailResponse(
      name: json['name'] as String,
      price: json['price'] as String?,
      regular_price: json['regular_price'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      on_sale: json['on_sale'] as bool?,
      short_description: json['short_description'] as String?,
      average_rating: json['average_rating'] as String?,
      weight: json['weight'] as String?,
      featured: json['featured'] as bool?,
      bundle_min_size: json['bundle_min_size'] == null
          ? 0
          : parseInter(json['bundle_min_size']),
      bundle_max_size: json['bundle_max_size'] == null
          ? 0
          : parseInter(json['bundle_max_size']),
      bundle_stock_status: json['bundle_stock_status'] as String?,
      bundle_stock_quantity: parseToString(json['bundle_stock_quantity']),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageProduct.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ImageProduct>[],
      tags: (json['tags'] as List<dynamic>?)
              ?.map((e) => ProductTags.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProductTags>[],
      meta_data: (json['meta_data'] as List<dynamic>?)
              ?.map((e) => MetaData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MetaData>[],
      categories: (json['categories'] as List<dynamic>?)
              ?.map(
                  (e) => ProductCategories.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProductCategories>[],
      bundled_items: (json['bundled_items'] as List<dynamic>?)
              ?.map((e) => BundledItems.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <BundledItems>[],
    );

Map<String, dynamic> _$$_ProductDetailResponseToJson(
        _$_ProductDetailResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'regular_price': instance.regular_price,
      'description': instance.description,
      'type': instance.type,
      'on_sale': instance.on_sale,
      'short_description': instance.short_description,
      'average_rating': instance.average_rating,
      'weight': instance.weight,
      'featured': instance.featured,
      'bundle_min_size': instance.bundle_min_size,
      'bundle_max_size': instance.bundle_max_size,
      'bundle_stock_status': instance.bundle_stock_status,
      'bundle_stock_quantity': instance.bundle_stock_quantity,
      'images': instance.images,
      'tags': instance.tags,
      'meta_data': instance.meta_data,
      'categories': instance.categories,
      'bundled_items': instance.bundled_items,
    };

_$_BundledItems _$$_BundledItemsFromJson(Map<String, dynamic> json) =>
    _$_BundledItems(
      bundled_item_id: (json['bundled_item_id'] as num).toInt(),
      product_id: (json['product_id'] as num).toInt(),
      menu_order: (json['menu_order'] as num).toInt(),
      quantity_min: (json['quantity_min'] as num).toInt(),
      quantity_max: (json['quantity_max'] as num).toInt(),
      quantity_default: (json['quantity_default'] as num).toInt(),
      priced_individually: json['priced_individually'] as bool,
      shipped_individually: json['shipped_individually'] as bool,
      override_title: json['override_title'] as bool,
      override_description: json['override_description'] as bool,
      description: json['description'] as String,
      optional: json['optional'] as bool,
      hide_thumbnail: json['hide_thumbnail'] as bool,
      discount: json['discount'] as String,
      override_variations: json['override_variations'] as bool,
      override_default_variation_attributes:
          json['override_default_variation_attributes'] as bool,
      title: json['title'] as String,
      single_product_visibility: json['single_product_visibility'] as String,
      cart_visibility: json['cart_visibility'] as String,
      order_visibility: json['order_visibility'] as String,
      single_product_price_visibility:
          json['single_product_price_visibility'] as String,
      cart_price_visibility: json['cart_price_visibility'] as String,
      order_price_visibility: json['order_price_visibility'] as String,
      stock_status: json['stock_status'] as String,
    );

Map<String, dynamic> _$$_BundledItemsToJson(_$_BundledItems instance) =>
    <String, dynamic>{
      'bundled_item_id': instance.bundled_item_id,
      'product_id': instance.product_id,
      'menu_order': instance.menu_order,
      'quantity_min': instance.quantity_min,
      'quantity_max': instance.quantity_max,
      'quantity_default': instance.quantity_default,
      'priced_individually': instance.priced_individually,
      'shipped_individually': instance.shipped_individually,
      'override_title': instance.override_title,
      'override_description': instance.override_description,
      'description': instance.description,
      'optional': instance.optional,
      'hide_thumbnail': instance.hide_thumbnail,
      'discount': instance.discount,
      'override_variations': instance.override_variations,
      'override_default_variation_attributes':
          instance.override_default_variation_attributes,
      'title': instance.title,
      'single_product_visibility': instance.single_product_visibility,
      'cart_visibility': instance.cart_visibility,
      'order_visibility': instance.order_visibility,
      'single_product_price_visibility':
          instance.single_product_price_visibility,
      'cart_price_visibility': instance.cart_price_visibility,
      'order_price_visibility': instance.order_price_visibility,
      'stock_status': instance.stock_status,
    };

_$_ImageProduct _$$_ImageProductFromJson(Map<String, dynamic> json) =>
    _$_ImageProduct(
      id: (json['id'] as num).toInt(),
      src: json['src'] as String,
    );

Map<String, dynamic> _$$_ImageProductToJson(_$_ImageProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'src': instance.src,
    };

_$_ProductTags _$$_ProductTagsFromJson(Map<String, dynamic> json) =>
    _$_ProductTags(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$$_ProductTagsToJson(_$_ProductTags instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

_$_MetaData _$$_MetaDataFromJson(Map<String, dynamic> json) => _$_MetaData(
      id: (json['id'] as num).toInt(),
      key: json['key'] as String,
      value: json['value'],
    );

Map<String, dynamic> _$$_MetaDataToJson(_$_MetaData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
    };

_$_ProductCategories _$$_ProductCategoriesFromJson(Map<String, dynamic> json) =>
    _$_ProductCategories(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      slug: json['slug'] as String,
      image: json['image'] == null
          ? null
          : ImageCategory.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductCategoriesToJson(
        _$_ProductCategories instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'image': instance.image,
    };

_$_ImageCategory _$$_ImageCategoryFromJson(Map<String, dynamic> json) =>
    _$_ImageCategory(
      id: (json['id'] as num).toInt(),
      src: json['src'],
    );

Map<String, dynamic> _$$_ImageCategoryToJson(_$_ImageCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'src': instance.src,
    };
