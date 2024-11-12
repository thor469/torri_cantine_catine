// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDetailResponse _$ProductDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _ProductDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailResponse {
  String get name => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get regular_price => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  bool? get on_sale => throw _privateConstructorUsedError;
  String? get short_description => throw _privateConstructorUsedError;
  String? get average_rating => throw _privateConstructorUsedError;
  String? get weight => throw _privateConstructorUsedError;
  bool? get featured => throw _privateConstructorUsedError;
  @JsonKey(name: 'bundle_min_size', fromJson: parseInter)
  int get bundle_min_size => throw _privateConstructorUsedError;
  @JsonKey(name: 'bundle_max_size', fromJson: parseInter)
  int get bundle_max_size =>
      throw _privateConstructorUsedError; // @Default(0) int? bundle_min_size,
// @Default(0) int? bundle_max_size,
  String? get bundle_stock_status => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseToString)
  String? get bundle_stock_quantity =>
      throw _privateConstructorUsedError; // String? bundle_stock_quantity,
  List<ImageProduct>? get images => throw _privateConstructorUsedError;
  List<ProductTags>? get tags => throw _privateConstructorUsedError;
  List<MetaData>? get meta_data => throw _privateConstructorUsedError;
  List<ProductCategories>? get categories => throw _privateConstructorUsedError;
  List<BundledItems>? get bundled_items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailResponseCopyWith<ProductDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailResponseCopyWith<$Res> {
  factory $ProductDetailResponseCopyWith(ProductDetailResponse value,
          $Res Function(ProductDetailResponse) then) =
      _$ProductDetailResponseCopyWithImpl<$Res, ProductDetailResponse>;
  @useResult
  $Res call(
      {String name,
      String? price,
      String? regular_price,
      String? description,
      String? type,
      bool? on_sale,
      String? short_description,
      String? average_rating,
      String? weight,
      bool? featured,
      @JsonKey(name: 'bundle_min_size', fromJson: parseInter)
      int bundle_min_size,
      @JsonKey(name: 'bundle_max_size', fromJson: parseInter)
      int bundle_max_size,
      String? bundle_stock_status,
      @JsonKey(fromJson: parseToString) String? bundle_stock_quantity,
      List<ImageProduct>? images,
      List<ProductTags>? tags,
      List<MetaData>? meta_data,
      List<ProductCategories>? categories,
      List<BundledItems>? bundled_items});
}

/// @nodoc
class _$ProductDetailResponseCopyWithImpl<$Res,
        $Val extends ProductDetailResponse>
    implements $ProductDetailResponseCopyWith<$Res> {
  _$ProductDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = freezed,
    Object? regular_price = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? on_sale = freezed,
    Object? short_description = freezed,
    Object? average_rating = freezed,
    Object? weight = freezed,
    Object? featured = freezed,
    Object? bundle_min_size = null,
    Object? bundle_max_size = null,
    Object? bundle_stock_status = freezed,
    Object? bundle_stock_quantity = freezed,
    Object? images = freezed,
    Object? tags = freezed,
    Object? meta_data = freezed,
    Object? categories = freezed,
    Object? bundled_items = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      regular_price: freezed == regular_price
          ? _value.regular_price
          : regular_price // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      on_sale: freezed == on_sale
          ? _value.on_sale
          : on_sale // ignore: cast_nullable_to_non_nullable
              as bool?,
      short_description: freezed == short_description
          ? _value.short_description
          : short_description // ignore: cast_nullable_to_non_nullable
              as String?,
      average_rating: freezed == average_rating
          ? _value.average_rating
          : average_rating // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool?,
      bundle_min_size: null == bundle_min_size
          ? _value.bundle_min_size
          : bundle_min_size // ignore: cast_nullable_to_non_nullable
              as int,
      bundle_max_size: null == bundle_max_size
          ? _value.bundle_max_size
          : bundle_max_size // ignore: cast_nullable_to_non_nullable
              as int,
      bundle_stock_status: freezed == bundle_stock_status
          ? _value.bundle_stock_status
          : bundle_stock_status // ignore: cast_nullable_to_non_nullable
              as String?,
      bundle_stock_quantity: freezed == bundle_stock_quantity
          ? _value.bundle_stock_quantity
          : bundle_stock_quantity // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageProduct>?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<ProductTags>?,
      meta_data: freezed == meta_data
          ? _value.meta_data
          : meta_data // ignore: cast_nullable_to_non_nullable
              as List<MetaData>?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategories>?,
      bundled_items: freezed == bundled_items
          ? _value.bundled_items
          : bundled_items // ignore: cast_nullable_to_non_nullable
              as List<BundledItems>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductDetailResponseCopyWith<$Res>
    implements $ProductDetailResponseCopyWith<$Res> {
  factory _$$_ProductDetailResponseCopyWith(_$_ProductDetailResponse value,
          $Res Function(_$_ProductDetailResponse) then) =
      __$$_ProductDetailResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? price,
      String? regular_price,
      String? description,
      String? type,
      bool? on_sale,
      String? short_description,
      String? average_rating,
      String? weight,
      bool? featured,
      @JsonKey(name: 'bundle_min_size', fromJson: parseInter)
      int bundle_min_size,
      @JsonKey(name: 'bundle_max_size', fromJson: parseInter)
      int bundle_max_size,
      String? bundle_stock_status,
      @JsonKey(fromJson: parseToString) String? bundle_stock_quantity,
      List<ImageProduct>? images,
      List<ProductTags>? tags,
      List<MetaData>? meta_data,
      List<ProductCategories>? categories,
      List<BundledItems>? bundled_items});
}

/// @nodoc
class __$$_ProductDetailResponseCopyWithImpl<$Res>
    extends _$ProductDetailResponseCopyWithImpl<$Res, _$_ProductDetailResponse>
    implements _$$_ProductDetailResponseCopyWith<$Res> {
  __$$_ProductDetailResponseCopyWithImpl(_$_ProductDetailResponse _value,
      $Res Function(_$_ProductDetailResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = freezed,
    Object? regular_price = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? on_sale = freezed,
    Object? short_description = freezed,
    Object? average_rating = freezed,
    Object? weight = freezed,
    Object? featured = freezed,
    Object? bundle_min_size = null,
    Object? bundle_max_size = null,
    Object? bundle_stock_status = freezed,
    Object? bundle_stock_quantity = freezed,
    Object? images = freezed,
    Object? tags = freezed,
    Object? meta_data = freezed,
    Object? categories = freezed,
    Object? bundled_items = freezed,
  }) {
    return _then(_$_ProductDetailResponse(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      regular_price: freezed == regular_price
          ? _value.regular_price
          : regular_price // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      on_sale: freezed == on_sale
          ? _value.on_sale
          : on_sale // ignore: cast_nullable_to_non_nullable
              as bool?,
      short_description: freezed == short_description
          ? _value.short_description
          : short_description // ignore: cast_nullable_to_non_nullable
              as String?,
      average_rating: freezed == average_rating
          ? _value.average_rating
          : average_rating // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool?,
      bundle_min_size: null == bundle_min_size
          ? _value.bundle_min_size
          : bundle_min_size // ignore: cast_nullable_to_non_nullable
              as int,
      bundle_max_size: null == bundle_max_size
          ? _value.bundle_max_size
          : bundle_max_size // ignore: cast_nullable_to_non_nullable
              as int,
      bundle_stock_status: freezed == bundle_stock_status
          ? _value.bundle_stock_status
          : bundle_stock_status // ignore: cast_nullable_to_non_nullable
              as String?,
      bundle_stock_quantity: freezed == bundle_stock_quantity
          ? _value.bundle_stock_quantity
          : bundle_stock_quantity // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageProduct>?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<ProductTags>?,
      meta_data: freezed == meta_data
          ? _value._meta_data
          : meta_data // ignore: cast_nullable_to_non_nullable
              as List<MetaData>?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategories>?,
      bundled_items: freezed == bundled_items
          ? _value._bundled_items
          : bundled_items // ignore: cast_nullable_to_non_nullable
              as List<BundledItems>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDetailResponse implements _ProductDetailResponse {
  _$_ProductDetailResponse(
      {required this.name,
      this.price,
      this.regular_price,
      this.description,
      this.type,
      this.on_sale,
      this.short_description,
      this.average_rating,
      this.weight,
      this.featured,
      @JsonKey(name: 'bundle_min_size', fromJson: parseInter)
      this.bundle_min_size = 0,
      @JsonKey(name: 'bundle_max_size', fromJson: parseInter)
      this.bundle_max_size = 0,
      this.bundle_stock_status,
      @JsonKey(fromJson: parseToString) this.bundle_stock_quantity,
      final List<ImageProduct>? images = const <ImageProduct>[],
      final List<ProductTags>? tags = const <ProductTags>[],
      final List<MetaData>? meta_data = const <MetaData>[],
      final List<ProductCategories>? categories = const <ProductCategories>[],
      final List<BundledItems>? bundled_items = const <BundledItems>[]})
      : _images = images,
        _tags = tags,
        _meta_data = meta_data,
        _categories = categories,
        _bundled_items = bundled_items;

  factory _$_ProductDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDetailResponseFromJson(json);

  @override
  final String name;
  @override
  final String? price;
  @override
  final String? regular_price;
  @override
  final String? description;
  @override
  final String? type;
  @override
  final bool? on_sale;
  @override
  final String? short_description;
  @override
  final String? average_rating;
  @override
  final String? weight;
  @override
  final bool? featured;
  @override
  @JsonKey(name: 'bundle_min_size', fromJson: parseInter)
  final int bundle_min_size;
  @override
  @JsonKey(name: 'bundle_max_size', fromJson: parseInter)
  final int bundle_max_size;
// @Default(0) int? bundle_min_size,
// @Default(0) int? bundle_max_size,
  @override
  final String? bundle_stock_status;
  @override
  @JsonKey(fromJson: parseToString)
  final String? bundle_stock_quantity;
// String? bundle_stock_quantity,
  final List<ImageProduct>? _images;
// String? bundle_stock_quantity,
  @override
  @JsonKey()
  List<ImageProduct>? get images {
    final value = _images;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductTags>? _tags;
  @override
  @JsonKey()
  List<ProductTags>? get tags {
    final value = _tags;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MetaData>? _meta_data;
  @override
  @JsonKey()
  List<MetaData>? get meta_data {
    final value = _meta_data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductCategories>? _categories;
  @override
  @JsonKey()
  List<ProductCategories>? get categories {
    final value = _categories;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BundledItems>? _bundled_items;
  @override
  @JsonKey()
  List<BundledItems>? get bundled_items {
    final value = _bundled_items;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductDetailResponse(name: $name, price: $price, regular_price: $regular_price, description: $description, type: $type, on_sale: $on_sale, short_description: $short_description, average_rating: $average_rating, weight: $weight, featured: $featured, bundle_min_size: $bundle_min_size, bundle_max_size: $bundle_max_size, bundle_stock_status: $bundle_stock_status, bundle_stock_quantity: $bundle_stock_quantity, images: $images, tags: $tags, meta_data: $meta_data, categories: $categories, bundled_items: $bundled_items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDetailResponse &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.regular_price, regular_price) ||
                other.regular_price == regular_price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.on_sale, on_sale) || other.on_sale == on_sale) &&
            (identical(other.short_description, short_description) ||
                other.short_description == short_description) &&
            (identical(other.average_rating, average_rating) ||
                other.average_rating == average_rating) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.featured, featured) ||
                other.featured == featured) &&
            (identical(other.bundle_min_size, bundle_min_size) ||
                other.bundle_min_size == bundle_min_size) &&
            (identical(other.bundle_max_size, bundle_max_size) ||
                other.bundle_max_size == bundle_max_size) &&
            (identical(other.bundle_stock_status, bundle_stock_status) ||
                other.bundle_stock_status == bundle_stock_status) &&
            (identical(other.bundle_stock_quantity, bundle_stock_quantity) ||
                other.bundle_stock_quantity == bundle_stock_quantity) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._meta_data, _meta_data) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._bundled_items, _bundled_items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        price,
        regular_price,
        description,
        type,
        on_sale,
        short_description,
        average_rating,
        weight,
        featured,
        bundle_min_size,
        bundle_max_size,
        bundle_stock_status,
        bundle_stock_quantity,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(_meta_data),
        const DeepCollectionEquality().hash(_categories),
        const DeepCollectionEquality().hash(_bundled_items)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDetailResponseCopyWith<_$_ProductDetailResponse> get copyWith =>
      __$$_ProductDetailResponseCopyWithImpl<_$_ProductDetailResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDetailResponseToJson(
      this,
    );
  }
}

abstract class _ProductDetailResponse implements ProductDetailResponse {
  factory _ProductDetailResponse(
      {required final String name,
      final String? price,
      final String? regular_price,
      final String? description,
      final String? type,
      final bool? on_sale,
      final String? short_description,
      final String? average_rating,
      final String? weight,
      final bool? featured,
      @JsonKey(name: 'bundle_min_size', fromJson: parseInter)
      final int bundle_min_size,
      @JsonKey(name: 'bundle_max_size', fromJson: parseInter)
      final int bundle_max_size,
      final String? bundle_stock_status,
      @JsonKey(fromJson: parseToString) final String? bundle_stock_quantity,
      final List<ImageProduct>? images,
      final List<ProductTags>? tags,
      final List<MetaData>? meta_data,
      final List<ProductCategories>? categories,
      final List<BundledItems>? bundled_items}) = _$_ProductDetailResponse;

  factory _ProductDetailResponse.fromJson(Map<String, dynamic> json) =
      _$_ProductDetailResponse.fromJson;

  @override
  String get name;
  @override
  String? get price;
  @override
  String? get regular_price;
  @override
  String? get description;
  @override
  String? get type;
  @override
  bool? get on_sale;
  @override
  String? get short_description;
  @override
  String? get average_rating;
  @override
  String? get weight;
  @override
  bool? get featured;
  @override
  @JsonKey(name: 'bundle_min_size', fromJson: parseInter)
  int get bundle_min_size;
  @override
  @JsonKey(name: 'bundle_max_size', fromJson: parseInter)
  int get bundle_max_size;
  @override // @Default(0) int? bundle_min_size,
// @Default(0) int? bundle_max_size,
  String? get bundle_stock_status;
  @override
  @JsonKey(fromJson: parseToString)
  String? get bundle_stock_quantity;
  @override // String? bundle_stock_quantity,
  List<ImageProduct>? get images;
  @override
  List<ProductTags>? get tags;
  @override
  List<MetaData>? get meta_data;
  @override
  List<ProductCategories>? get categories;
  @override
  List<BundledItems>? get bundled_items;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDetailResponseCopyWith<_$_ProductDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

BundledItems _$BundledItemsFromJson(Map<String, dynamic> json) {
  return _BundledItems.fromJson(json);
}

/// @nodoc
mixin _$BundledItems {
  int get bundled_item_id => throw _privateConstructorUsedError;
  int get product_id => throw _privateConstructorUsedError;
  int get menu_order => throw _privateConstructorUsedError;
  int get quantity_min => throw _privateConstructorUsedError;
  int get quantity_max => throw _privateConstructorUsedError;
  int get quantity_default => throw _privateConstructorUsedError;
  bool get priced_individually => throw _privateConstructorUsedError;
  bool get shipped_individually => throw _privateConstructorUsedError;
  bool get override_title => throw _privateConstructorUsedError;
  bool get override_description => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get optional => throw _privateConstructorUsedError;
  bool get hide_thumbnail => throw _privateConstructorUsedError;
  String get discount => throw _privateConstructorUsedError;
  bool get override_variations =>
      throw _privateConstructorUsedError; //allowed_variations: [],
  bool get override_default_variation_attributes =>
      throw _privateConstructorUsedError; //default_variation_attributes: [],
  String get title => throw _privateConstructorUsedError;
  String get single_product_visibility => throw _privateConstructorUsedError;
  String get cart_visibility => throw _privateConstructorUsedError;
  String get order_visibility => throw _privateConstructorUsedError;
  String get single_product_price_visibility =>
      throw _privateConstructorUsedError;
  String get cart_price_visibility => throw _privateConstructorUsedError;
  String get order_price_visibility => throw _privateConstructorUsedError;
  String get stock_status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BundledItemsCopyWith<BundledItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BundledItemsCopyWith<$Res> {
  factory $BundledItemsCopyWith(
          BundledItems value, $Res Function(BundledItems) then) =
      _$BundledItemsCopyWithImpl<$Res, BundledItems>;
  @useResult
  $Res call(
      {int bundled_item_id,
      int product_id,
      int menu_order,
      int quantity_min,
      int quantity_max,
      int quantity_default,
      bool priced_individually,
      bool shipped_individually,
      bool override_title,
      bool override_description,
      String description,
      bool optional,
      bool hide_thumbnail,
      String discount,
      bool override_variations,
      bool override_default_variation_attributes,
      String title,
      String single_product_visibility,
      String cart_visibility,
      String order_visibility,
      String single_product_price_visibility,
      String cart_price_visibility,
      String order_price_visibility,
      String stock_status});
}

/// @nodoc
class _$BundledItemsCopyWithImpl<$Res, $Val extends BundledItems>
    implements $BundledItemsCopyWith<$Res> {
  _$BundledItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bundled_item_id = null,
    Object? product_id = null,
    Object? menu_order = null,
    Object? quantity_min = null,
    Object? quantity_max = null,
    Object? quantity_default = null,
    Object? priced_individually = null,
    Object? shipped_individually = null,
    Object? override_title = null,
    Object? override_description = null,
    Object? description = null,
    Object? optional = null,
    Object? hide_thumbnail = null,
    Object? discount = null,
    Object? override_variations = null,
    Object? override_default_variation_attributes = null,
    Object? title = null,
    Object? single_product_visibility = null,
    Object? cart_visibility = null,
    Object? order_visibility = null,
    Object? single_product_price_visibility = null,
    Object? cart_price_visibility = null,
    Object? order_price_visibility = null,
    Object? stock_status = null,
  }) {
    return _then(_value.copyWith(
      bundled_item_id: null == bundled_item_id
          ? _value.bundled_item_id
          : bundled_item_id // ignore: cast_nullable_to_non_nullable
              as int,
      product_id: null == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int,
      menu_order: null == menu_order
          ? _value.menu_order
          : menu_order // ignore: cast_nullable_to_non_nullable
              as int,
      quantity_min: null == quantity_min
          ? _value.quantity_min
          : quantity_min // ignore: cast_nullable_to_non_nullable
              as int,
      quantity_max: null == quantity_max
          ? _value.quantity_max
          : quantity_max // ignore: cast_nullable_to_non_nullable
              as int,
      quantity_default: null == quantity_default
          ? _value.quantity_default
          : quantity_default // ignore: cast_nullable_to_non_nullable
              as int,
      priced_individually: null == priced_individually
          ? _value.priced_individually
          : priced_individually // ignore: cast_nullable_to_non_nullable
              as bool,
      shipped_individually: null == shipped_individually
          ? _value.shipped_individually
          : shipped_individually // ignore: cast_nullable_to_non_nullable
              as bool,
      override_title: null == override_title
          ? _value.override_title
          : override_title // ignore: cast_nullable_to_non_nullable
              as bool,
      override_description: null == override_description
          ? _value.override_description
          : override_description // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      optional: null == optional
          ? _value.optional
          : optional // ignore: cast_nullable_to_non_nullable
              as bool,
      hide_thumbnail: null == hide_thumbnail
          ? _value.hide_thumbnail
          : hide_thumbnail // ignore: cast_nullable_to_non_nullable
              as bool,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      override_variations: null == override_variations
          ? _value.override_variations
          : override_variations // ignore: cast_nullable_to_non_nullable
              as bool,
      override_default_variation_attributes: null ==
              override_default_variation_attributes
          ? _value.override_default_variation_attributes
          : override_default_variation_attributes // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      single_product_visibility: null == single_product_visibility
          ? _value.single_product_visibility
          : single_product_visibility // ignore: cast_nullable_to_non_nullable
              as String,
      cart_visibility: null == cart_visibility
          ? _value.cart_visibility
          : cart_visibility // ignore: cast_nullable_to_non_nullable
              as String,
      order_visibility: null == order_visibility
          ? _value.order_visibility
          : order_visibility // ignore: cast_nullable_to_non_nullable
              as String,
      single_product_price_visibility: null == single_product_price_visibility
          ? _value.single_product_price_visibility
          : single_product_price_visibility // ignore: cast_nullable_to_non_nullable
              as String,
      cart_price_visibility: null == cart_price_visibility
          ? _value.cart_price_visibility
          : cart_price_visibility // ignore: cast_nullable_to_non_nullable
              as String,
      order_price_visibility: null == order_price_visibility
          ? _value.order_price_visibility
          : order_price_visibility // ignore: cast_nullable_to_non_nullable
              as String,
      stock_status: null == stock_status
          ? _value.stock_status
          : stock_status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BundledItemsCopyWith<$Res>
    implements $BundledItemsCopyWith<$Res> {
  factory _$$_BundledItemsCopyWith(
          _$_BundledItems value, $Res Function(_$_BundledItems) then) =
      __$$_BundledItemsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int bundled_item_id,
      int product_id,
      int menu_order,
      int quantity_min,
      int quantity_max,
      int quantity_default,
      bool priced_individually,
      bool shipped_individually,
      bool override_title,
      bool override_description,
      String description,
      bool optional,
      bool hide_thumbnail,
      String discount,
      bool override_variations,
      bool override_default_variation_attributes,
      String title,
      String single_product_visibility,
      String cart_visibility,
      String order_visibility,
      String single_product_price_visibility,
      String cart_price_visibility,
      String order_price_visibility,
      String stock_status});
}

/// @nodoc
class __$$_BundledItemsCopyWithImpl<$Res>
    extends _$BundledItemsCopyWithImpl<$Res, _$_BundledItems>
    implements _$$_BundledItemsCopyWith<$Res> {
  __$$_BundledItemsCopyWithImpl(
      _$_BundledItems _value, $Res Function(_$_BundledItems) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bundled_item_id = null,
    Object? product_id = null,
    Object? menu_order = null,
    Object? quantity_min = null,
    Object? quantity_max = null,
    Object? quantity_default = null,
    Object? priced_individually = null,
    Object? shipped_individually = null,
    Object? override_title = null,
    Object? override_description = null,
    Object? description = null,
    Object? optional = null,
    Object? hide_thumbnail = null,
    Object? discount = null,
    Object? override_variations = null,
    Object? override_default_variation_attributes = null,
    Object? title = null,
    Object? single_product_visibility = null,
    Object? cart_visibility = null,
    Object? order_visibility = null,
    Object? single_product_price_visibility = null,
    Object? cart_price_visibility = null,
    Object? order_price_visibility = null,
    Object? stock_status = null,
  }) {
    return _then(_$_BundledItems(
      bundled_item_id: null == bundled_item_id
          ? _value.bundled_item_id
          : bundled_item_id // ignore: cast_nullable_to_non_nullable
              as int,
      product_id: null == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int,
      menu_order: null == menu_order
          ? _value.menu_order
          : menu_order // ignore: cast_nullable_to_non_nullable
              as int,
      quantity_min: null == quantity_min
          ? _value.quantity_min
          : quantity_min // ignore: cast_nullable_to_non_nullable
              as int,
      quantity_max: null == quantity_max
          ? _value.quantity_max
          : quantity_max // ignore: cast_nullable_to_non_nullable
              as int,
      quantity_default: null == quantity_default
          ? _value.quantity_default
          : quantity_default // ignore: cast_nullable_to_non_nullable
              as int,
      priced_individually: null == priced_individually
          ? _value.priced_individually
          : priced_individually // ignore: cast_nullable_to_non_nullable
              as bool,
      shipped_individually: null == shipped_individually
          ? _value.shipped_individually
          : shipped_individually // ignore: cast_nullable_to_non_nullable
              as bool,
      override_title: null == override_title
          ? _value.override_title
          : override_title // ignore: cast_nullable_to_non_nullable
              as bool,
      override_description: null == override_description
          ? _value.override_description
          : override_description // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      optional: null == optional
          ? _value.optional
          : optional // ignore: cast_nullable_to_non_nullable
              as bool,
      hide_thumbnail: null == hide_thumbnail
          ? _value.hide_thumbnail
          : hide_thumbnail // ignore: cast_nullable_to_non_nullable
              as bool,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      override_variations: null == override_variations
          ? _value.override_variations
          : override_variations // ignore: cast_nullable_to_non_nullable
              as bool,
      override_default_variation_attributes: null ==
              override_default_variation_attributes
          ? _value.override_default_variation_attributes
          : override_default_variation_attributes // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      single_product_visibility: null == single_product_visibility
          ? _value.single_product_visibility
          : single_product_visibility // ignore: cast_nullable_to_non_nullable
              as String,
      cart_visibility: null == cart_visibility
          ? _value.cart_visibility
          : cart_visibility // ignore: cast_nullable_to_non_nullable
              as String,
      order_visibility: null == order_visibility
          ? _value.order_visibility
          : order_visibility // ignore: cast_nullable_to_non_nullable
              as String,
      single_product_price_visibility: null == single_product_price_visibility
          ? _value.single_product_price_visibility
          : single_product_price_visibility // ignore: cast_nullable_to_non_nullable
              as String,
      cart_price_visibility: null == cart_price_visibility
          ? _value.cart_price_visibility
          : cart_price_visibility // ignore: cast_nullable_to_non_nullable
              as String,
      order_price_visibility: null == order_price_visibility
          ? _value.order_price_visibility
          : order_price_visibility // ignore: cast_nullable_to_non_nullable
              as String,
      stock_status: null == stock_status
          ? _value.stock_status
          : stock_status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BundledItems implements _BundledItems {
  _$_BundledItems(
      {required this.bundled_item_id,
      required this.product_id,
      required this.menu_order,
      required this.quantity_min,
      required this.quantity_max,
      required this.quantity_default,
      required this.priced_individually,
      required this.shipped_individually,
      required this.override_title,
      required this.override_description,
      required this.description,
      required this.optional,
      required this.hide_thumbnail,
      required this.discount,
      required this.override_variations,
      required this.override_default_variation_attributes,
      required this.title,
      required this.single_product_visibility,
      required this.cart_visibility,
      required this.order_visibility,
      required this.single_product_price_visibility,
      required this.cart_price_visibility,
      required this.order_price_visibility,
      required this.stock_status});

  factory _$_BundledItems.fromJson(Map<String, dynamic> json) =>
      _$$_BundledItemsFromJson(json);

  @override
  final int bundled_item_id;
  @override
  final int product_id;
  @override
  final int menu_order;
  @override
  final int quantity_min;
  @override
  final int quantity_max;
  @override
  final int quantity_default;
  @override
  final bool priced_individually;
  @override
  final bool shipped_individually;
  @override
  final bool override_title;
  @override
  final bool override_description;
  @override
  final String description;
  @override
  final bool optional;
  @override
  final bool hide_thumbnail;
  @override
  final String discount;
  @override
  final bool override_variations;
//allowed_variations: [],
  @override
  final bool override_default_variation_attributes;
//default_variation_attributes: [],
  @override
  final String title;
  @override
  final String single_product_visibility;
  @override
  final String cart_visibility;
  @override
  final String order_visibility;
  @override
  final String single_product_price_visibility;
  @override
  final String cart_price_visibility;
  @override
  final String order_price_visibility;
  @override
  final String stock_status;

  @override
  String toString() {
    return 'BundledItems(bundled_item_id: $bundled_item_id, product_id: $product_id, menu_order: $menu_order, quantity_min: $quantity_min, quantity_max: $quantity_max, quantity_default: $quantity_default, priced_individually: $priced_individually, shipped_individually: $shipped_individually, override_title: $override_title, override_description: $override_description, description: $description, optional: $optional, hide_thumbnail: $hide_thumbnail, discount: $discount, override_variations: $override_variations, override_default_variation_attributes: $override_default_variation_attributes, title: $title, single_product_visibility: $single_product_visibility, cart_visibility: $cart_visibility, order_visibility: $order_visibility, single_product_price_visibility: $single_product_price_visibility, cart_price_visibility: $cart_price_visibility, order_price_visibility: $order_price_visibility, stock_status: $stock_status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BundledItems &&
            (identical(other.bundled_item_id, bundled_item_id) ||
                other.bundled_item_id == bundled_item_id) &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.menu_order, menu_order) ||
                other.menu_order == menu_order) &&
            (identical(other.quantity_min, quantity_min) ||
                other.quantity_min == quantity_min) &&
            (identical(other.quantity_max, quantity_max) ||
                other.quantity_max == quantity_max) &&
            (identical(other.quantity_default, quantity_default) ||
                other.quantity_default == quantity_default) &&
            (identical(other.priced_individually, priced_individually) ||
                other.priced_individually == priced_individually) &&
            (identical(other.shipped_individually, shipped_individually) ||
                other.shipped_individually == shipped_individually) &&
            (identical(other.override_title, override_title) ||
                other.override_title == override_title) &&
            (identical(other.override_description, override_description) ||
                other.override_description == override_description) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.optional, optional) ||
                other.optional == optional) &&
            (identical(other.hide_thumbnail, hide_thumbnail) ||
                other.hide_thumbnail == hide_thumbnail) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.override_variations, override_variations) ||
                other.override_variations == override_variations) &&
            (identical(other.override_default_variation_attributes,
                    override_default_variation_attributes) ||
                other.override_default_variation_attributes ==
                    override_default_variation_attributes) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.single_product_visibility,
                    single_product_visibility) ||
                other.single_product_visibility == single_product_visibility) &&
            (identical(other.cart_visibility, cart_visibility) ||
                other.cart_visibility == cart_visibility) &&
            (identical(other.order_visibility, order_visibility) ||
                other.order_visibility == order_visibility) &&
            (identical(other.single_product_price_visibility,
                    single_product_price_visibility) ||
                other.single_product_price_visibility ==
                    single_product_price_visibility) &&
            (identical(other.cart_price_visibility, cart_price_visibility) ||
                other.cart_price_visibility == cart_price_visibility) &&
            (identical(other.order_price_visibility, order_price_visibility) ||
                other.order_price_visibility == order_price_visibility) &&
            (identical(other.stock_status, stock_status) ||
                other.stock_status == stock_status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        bundled_item_id,
        product_id,
        menu_order,
        quantity_min,
        quantity_max,
        quantity_default,
        priced_individually,
        shipped_individually,
        override_title,
        override_description,
        description,
        optional,
        hide_thumbnail,
        discount,
        override_variations,
        override_default_variation_attributes,
        title,
        single_product_visibility,
        cart_visibility,
        order_visibility,
        single_product_price_visibility,
        cart_price_visibility,
        order_price_visibility,
        stock_status
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BundledItemsCopyWith<_$_BundledItems> get copyWith =>
      __$$_BundledItemsCopyWithImpl<_$_BundledItems>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BundledItemsToJson(
      this,
    );
  }
}

abstract class _BundledItems implements BundledItems {
  factory _BundledItems(
      {required final int bundled_item_id,
      required final int product_id,
      required final int menu_order,
      required final int quantity_min,
      required final int quantity_max,
      required final int quantity_default,
      required final bool priced_individually,
      required final bool shipped_individually,
      required final bool override_title,
      required final bool override_description,
      required final String description,
      required final bool optional,
      required final bool hide_thumbnail,
      required final String discount,
      required final bool override_variations,
      required final bool override_default_variation_attributes,
      required final String title,
      required final String single_product_visibility,
      required final String cart_visibility,
      required final String order_visibility,
      required final String single_product_price_visibility,
      required final String cart_price_visibility,
      required final String order_price_visibility,
      required final String stock_status}) = _$_BundledItems;

  factory _BundledItems.fromJson(Map<String, dynamic> json) =
      _$_BundledItems.fromJson;

  @override
  int get bundled_item_id;
  @override
  int get product_id;
  @override
  int get menu_order;
  @override
  int get quantity_min;
  @override
  int get quantity_max;
  @override
  int get quantity_default;
  @override
  bool get priced_individually;
  @override
  bool get shipped_individually;
  @override
  bool get override_title;
  @override
  bool get override_description;
  @override
  String get description;
  @override
  bool get optional;
  @override
  bool get hide_thumbnail;
  @override
  String get discount;
  @override
  bool get override_variations;
  @override //allowed_variations: [],
  bool get override_default_variation_attributes;
  @override //default_variation_attributes: [],
  String get title;
  @override
  String get single_product_visibility;
  @override
  String get cart_visibility;
  @override
  String get order_visibility;
  @override
  String get single_product_price_visibility;
  @override
  String get cart_price_visibility;
  @override
  String get order_price_visibility;
  @override
  String get stock_status;
  @override
  @JsonKey(ignore: true)
  _$$_BundledItemsCopyWith<_$_BundledItems> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageProduct _$ImageProductFromJson(Map<String, dynamic> json) {
  return _ImageProduct.fromJson(json);
}

/// @nodoc
mixin _$ImageProduct {
  int get id => throw _privateConstructorUsedError;
  String get src => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageProductCopyWith<ImageProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageProductCopyWith<$Res> {
  factory $ImageProductCopyWith(
          ImageProduct value, $Res Function(ImageProduct) then) =
      _$ImageProductCopyWithImpl<$Res, ImageProduct>;
  @useResult
  $Res call({int id, String src});
}

/// @nodoc
class _$ImageProductCopyWithImpl<$Res, $Val extends ImageProduct>
    implements $ImageProductCopyWith<$Res> {
  _$ImageProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? src = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageProductCopyWith<$Res>
    implements $ImageProductCopyWith<$Res> {
  factory _$$_ImageProductCopyWith(
          _$_ImageProduct value, $Res Function(_$_ImageProduct) then) =
      __$$_ImageProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String src});
}

/// @nodoc
class __$$_ImageProductCopyWithImpl<$Res>
    extends _$ImageProductCopyWithImpl<$Res, _$_ImageProduct>
    implements _$$_ImageProductCopyWith<$Res> {
  __$$_ImageProductCopyWithImpl(
      _$_ImageProduct _value, $Res Function(_$_ImageProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? src = null,
  }) {
    return _then(_$_ImageProduct(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageProduct implements _ImageProduct {
  _$_ImageProduct({required this.id, required this.src});

  factory _$_ImageProduct.fromJson(Map<String, dynamic> json) =>
      _$$_ImageProductFromJson(json);

  @override
  final int id;
  @override
  final String src;

  @override
  String toString() {
    return 'ImageProduct(id: $id, src: $src)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageProduct &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.src, src) || other.src == src));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, src);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageProductCopyWith<_$_ImageProduct> get copyWith =>
      __$$_ImageProductCopyWithImpl<_$_ImageProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageProductToJson(
      this,
    );
  }
}

abstract class _ImageProduct implements ImageProduct {
  factory _ImageProduct({required final int id, required final String src}) =
      _$_ImageProduct;

  factory _ImageProduct.fromJson(Map<String, dynamic> json) =
      _$_ImageProduct.fromJson;

  @override
  int get id;
  @override
  String get src;
  @override
  @JsonKey(ignore: true)
  _$$_ImageProductCopyWith<_$_ImageProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductTags _$ProductTagsFromJson(Map<String, dynamic> json) {
  return _ProductTags.fromJson(json);
}

/// @nodoc
mixin _$ProductTags {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductTagsCopyWith<ProductTags> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductTagsCopyWith<$Res> {
  factory $ProductTagsCopyWith(
          ProductTags value, $Res Function(ProductTags) then) =
      _$ProductTagsCopyWithImpl<$Res, ProductTags>;
  @useResult
  $Res call({int id, String name, String slug});
}

/// @nodoc
class _$ProductTagsCopyWithImpl<$Res, $Val extends ProductTags>
    implements $ProductTagsCopyWith<$Res> {
  _$ProductTagsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductTagsCopyWith<$Res>
    implements $ProductTagsCopyWith<$Res> {
  factory _$$_ProductTagsCopyWith(
          _$_ProductTags value, $Res Function(_$_ProductTags) then) =
      __$$_ProductTagsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String slug});
}

/// @nodoc
class __$$_ProductTagsCopyWithImpl<$Res>
    extends _$ProductTagsCopyWithImpl<$Res, _$_ProductTags>
    implements _$$_ProductTagsCopyWith<$Res> {
  __$$_ProductTagsCopyWithImpl(
      _$_ProductTags _value, $Res Function(_$_ProductTags) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
  }) {
    return _then(_$_ProductTags(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductTags implements _ProductTags {
  _$_ProductTags({required this.id, required this.name, required this.slug});

  factory _$_ProductTags.fromJson(Map<String, dynamic> json) =>
      _$$_ProductTagsFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String slug;

  @override
  String toString() {
    return 'ProductTags(id: $id, name: $name, slug: $slug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductTags &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductTagsCopyWith<_$_ProductTags> get copyWith =>
      __$$_ProductTagsCopyWithImpl<_$_ProductTags>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductTagsToJson(
      this,
    );
  }
}

abstract class _ProductTags implements ProductTags {
  factory _ProductTags(
      {required final int id,
      required final String name,
      required final String slug}) = _$_ProductTags;

  factory _ProductTags.fromJson(Map<String, dynamic> json) =
      _$_ProductTags.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  @JsonKey(ignore: true)
  _$$_ProductTagsCopyWith<_$_ProductTags> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaData _$MetaDataFromJson(Map<String, dynamic> json) {
  return _MetaData.fromJson(json);
}

/// @nodoc
mixin _$MetaData {
  int get id => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaDataCopyWith<MetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDataCopyWith<$Res> {
  factory $MetaDataCopyWith(MetaData value, $Res Function(MetaData) then) =
      _$MetaDataCopyWithImpl<$Res, MetaData>;
  @useResult
  $Res call({int id, String key, dynamic value});
}

/// @nodoc
class _$MetaDataCopyWithImpl<$Res, $Val extends MetaData>
    implements $MetaDataCopyWith<$Res> {
  _$MetaDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetaDataCopyWith<$Res> implements $MetaDataCopyWith<$Res> {
  factory _$$_MetaDataCopyWith(
          _$_MetaData value, $Res Function(_$_MetaData) then) =
      __$$_MetaDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String key, dynamic value});
}

/// @nodoc
class __$$_MetaDataCopyWithImpl<$Res>
    extends _$MetaDataCopyWithImpl<$Res, _$_MetaData>
    implements _$$_MetaDataCopyWith<$Res> {
  __$$_MetaDataCopyWithImpl(
      _$_MetaData _value, $Res Function(_$_MetaData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$_MetaData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaData implements _MetaData {
  _$_MetaData({required this.id, required this.key, this.value});

  factory _$_MetaData.fromJson(Map<String, dynamic> json) =>
      _$$_MetaDataFromJson(json);

  @override
  final int id;
  @override
  final String key;
  @override
  final dynamic value;

  @override
  String toString() {
    return 'MetaData(id: $id, key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, key, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaDataCopyWith<_$_MetaData> get copyWith =>
      __$$_MetaDataCopyWithImpl<_$_MetaData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaDataToJson(
      this,
    );
  }
}

abstract class _MetaData implements MetaData {
  factory _MetaData(
      {required final int id,
      required final String key,
      final dynamic value}) = _$_MetaData;

  factory _MetaData.fromJson(Map<String, dynamic> json) = _$_MetaData.fromJson;

  @override
  int get id;
  @override
  String get key;
  @override
  dynamic get value;
  @override
  @JsonKey(ignore: true)
  _$$_MetaDataCopyWith<_$_MetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductCategories _$ProductCategoriesFromJson(Map<String, dynamic> json) {
  return _ProductCategories.fromJson(json);
}

/// @nodoc
mixin _$ProductCategories {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  ImageCategory? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCategoriesCopyWith<ProductCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoriesCopyWith<$Res> {
  factory $ProductCategoriesCopyWith(
          ProductCategories value, $Res Function(ProductCategories) then) =
      _$ProductCategoriesCopyWithImpl<$Res, ProductCategories>;
  @useResult
  $Res call({int id, String name, String slug, ImageCategory? image});

  $ImageCategoryCopyWith<$Res>? get image;
}

/// @nodoc
class _$ProductCategoriesCopyWithImpl<$Res, $Val extends ProductCategories>
    implements $ProductCategoriesCopyWith<$Res> {
  _$ProductCategoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageCategory?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageCategoryCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ImageCategoryCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductCategoriesCopyWith<$Res>
    implements $ProductCategoriesCopyWith<$Res> {
  factory _$$_ProductCategoriesCopyWith(_$_ProductCategories value,
          $Res Function(_$_ProductCategories) then) =
      __$$_ProductCategoriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String slug, ImageCategory? image});

  @override
  $ImageCategoryCopyWith<$Res>? get image;
}

/// @nodoc
class __$$_ProductCategoriesCopyWithImpl<$Res>
    extends _$ProductCategoriesCopyWithImpl<$Res, _$_ProductCategories>
    implements _$$_ProductCategoriesCopyWith<$Res> {
  __$$_ProductCategoriesCopyWithImpl(
      _$_ProductCategories _value, $Res Function(_$_ProductCategories) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? image = freezed,
  }) {
    return _then(_$_ProductCategories(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageCategory?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductCategories implements _ProductCategories {
  _$_ProductCategories(
      {required this.id, required this.name, required this.slug, this.image});

  factory _$_ProductCategories.fromJson(Map<String, dynamic> json) =>
      _$$_ProductCategoriesFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final ImageCategory? image;

  @override
  String toString() {
    return 'ProductCategories(id: $id, name: $name, slug: $slug, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductCategories &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, slug, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCategoriesCopyWith<_$_ProductCategories> get copyWith =>
      __$$_ProductCategoriesCopyWithImpl<_$_ProductCategories>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductCategoriesToJson(
      this,
    );
  }
}

abstract class _ProductCategories implements ProductCategories {
  factory _ProductCategories(
      {required final int id,
      required final String name,
      required final String slug,
      final ImageCategory? image}) = _$_ProductCategories;

  factory _ProductCategories.fromJson(Map<String, dynamic> json) =
      _$_ProductCategories.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  ImageCategory? get image;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCategoriesCopyWith<_$_ProductCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageCategory _$ImageCategoryFromJson(Map<String, dynamic> json) {
  return _ImageCategory.fromJson(json);
}

/// @nodoc
mixin _$ImageCategory {
  int get id => throw _privateConstructorUsedError;
  dynamic get src => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCategoryCopyWith<ImageCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCategoryCopyWith<$Res> {
  factory $ImageCategoryCopyWith(
          ImageCategory value, $Res Function(ImageCategory) then) =
      _$ImageCategoryCopyWithImpl<$Res, ImageCategory>;
  @useResult
  $Res call({int id, dynamic src});
}

/// @nodoc
class _$ImageCategoryCopyWithImpl<$Res, $Val extends ImageCategory>
    implements $ImageCategoryCopyWith<$Res> {
  _$ImageCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? src = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageCategoryCopyWith<$Res>
    implements $ImageCategoryCopyWith<$Res> {
  factory _$$_ImageCategoryCopyWith(
          _$_ImageCategory value, $Res Function(_$_ImageCategory) then) =
      __$$_ImageCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, dynamic src});
}

/// @nodoc
class __$$_ImageCategoryCopyWithImpl<$Res>
    extends _$ImageCategoryCopyWithImpl<$Res, _$_ImageCategory>
    implements _$$_ImageCategoryCopyWith<$Res> {
  __$$_ImageCategoryCopyWithImpl(
      _$_ImageCategory _value, $Res Function(_$_ImageCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? src = null,
  }) {
    return _then(_$_ImageCategory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageCategory implements _ImageCategory {
  _$_ImageCategory({required this.id, required this.src});

  factory _$_ImageCategory.fromJson(Map<String, dynamic> json) =>
      _$$_ImageCategoryFromJson(json);

  @override
  final int id;
  @override
  final dynamic src;

  @override
  String toString() {
    return 'ImageCategory(id: $id, src: $src)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageCategory &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.src, src));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(src));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageCategoryCopyWith<_$_ImageCategory> get copyWith =>
      __$$_ImageCategoryCopyWithImpl<_$_ImageCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageCategoryToJson(
      this,
    );
  }
}

abstract class _ImageCategory implements ImageCategory {
  factory _ImageCategory({required final int id, required final dynamic src}) =
      _$_ImageCategory;

  factory _ImageCategory.fromJson(Map<String, dynamic> json) =
      _$_ImageCategory.fromJson;

  @override
  int get id;
  @override
  dynamic get src;
  @override
  @JsonKey(ignore: true)
  _$$_ImageCategoryCopyWith<_$_ImageCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
