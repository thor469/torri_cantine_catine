// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'all_products_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllProductsResponse _$AllProductsResponseFromJson(Map<String, dynamic> json) {
  return _AllProductsResponse.fromJson(json);
}

/// @nodoc
mixin _$AllProductsResponse {
  List<Product>? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllProductsResponseCopyWith<AllProductsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllProductsResponseCopyWith<$Res> {
  factory $AllProductsResponseCopyWith(
          AllProductsResponse value, $Res Function(AllProductsResponse) then) =
      _$AllProductsResponseCopyWithImpl<$Res, AllProductsResponse>;
  @useResult
  $Res call({List<Product>? products});
}

/// @nodoc
class _$AllProductsResponseCopyWithImpl<$Res, $Val extends AllProductsResponse>
    implements $AllProductsResponseCopyWith<$Res> {
  _$AllProductsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AllProductsResponseCopyWith<$Res>
    implements $AllProductsResponseCopyWith<$Res> {
  factory _$$_AllProductsResponseCopyWith(_$_AllProductsResponse value,
          $Res Function(_$_AllProductsResponse) then) =
      __$$_AllProductsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product>? products});
}

/// @nodoc
class __$$_AllProductsResponseCopyWithImpl<$Res>
    extends _$AllProductsResponseCopyWithImpl<$Res, _$_AllProductsResponse>
    implements _$$_AllProductsResponseCopyWith<$Res> {
  __$$_AllProductsResponseCopyWithImpl(_$_AllProductsResponse _value,
      $Res Function(_$_AllProductsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$_AllProductsResponse(
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AllProductsResponse implements _AllProductsResponse {
  _$_AllProductsResponse({final List<Product>? products = const <Product>[]})
      : _products = products;

  factory _$_AllProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AllProductsResponseFromJson(json);

  final List<Product>? _products;
  @override
  @JsonKey()
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AllProductsResponse(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllProductsResponse &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllProductsResponseCopyWith<_$_AllProductsResponse> get copyWith =>
      __$$_AllProductsResponseCopyWithImpl<_$_AllProductsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllProductsResponseToJson(
      this,
    );
  }
}

abstract class _AllProductsResponse implements AllProductsResponse {
  factory _AllProductsResponse({final List<Product>? products}) =
      _$_AllProductsResponse;

  factory _AllProductsResponse.fromJson(Map<String, dynamic> json) =
      _$_AllProductsResponse.fromJson;

  @override
  List<Product>? get products;
  @override
  @JsonKey(ignore: true)
  _$$_AllProductsResponseCopyWith<_$_AllProductsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get regular_price => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get short_description => throw _privateConstructorUsedError;
  String? get average_rating => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  bool? get featured => throw _privateConstructorUsedError;
  String? get date_created => throw _privateConstructorUsedError;
  List<ImageProduct> get images => throw _privateConstructorUsedError;
  List<ProductTags>? get tags => throw _privateConstructorUsedError;
  List<MetaData>? get metadata => throw _privateConstructorUsedError;
  List<ProductCategories>? get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? price,
      String? regular_price,
      String? description,
      String? short_description,
      String? average_rating,
      String? type,
      bool? featured,
      String? date_created,
      List<ImageProduct> images,
      List<ProductTags>? tags,
      List<MetaData>? metadata,
      List<ProductCategories>? categories});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = freezed,
    Object? regular_price = freezed,
    Object? description = freezed,
    Object? short_description = freezed,
    Object? average_rating = freezed,
    Object? type = freezed,
    Object? featured = freezed,
    Object? date_created = freezed,
    Object? images = null,
    Object? tags = freezed,
    Object? metadata = freezed,
    Object? categories = freezed,
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
      short_description: freezed == short_description
          ? _value.short_description
          : short_description // ignore: cast_nullable_to_non_nullable
              as String?,
      average_rating: freezed == average_rating
          ? _value.average_rating
          : average_rating // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool?,
      date_created: freezed == date_created
          ? _value.date_created
          : date_created // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageProduct>,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<ProductTags>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as List<MetaData>?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategories>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? price,
      String? regular_price,
      String? description,
      String? short_description,
      String? average_rating,
      String? type,
      bool? featured,
      String? date_created,
      List<ImageProduct> images,
      List<ProductTags>? tags,
      List<MetaData>? metadata,
      List<ProductCategories>? categories});
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$_Product>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = freezed,
    Object? regular_price = freezed,
    Object? description = freezed,
    Object? short_description = freezed,
    Object? average_rating = freezed,
    Object? type = freezed,
    Object? featured = freezed,
    Object? date_created = freezed,
    Object? images = null,
    Object? tags = freezed,
    Object? metadata = freezed,
    Object? categories = freezed,
  }) {
    return _then(_$_Product(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      short_description: freezed == short_description
          ? _value.short_description
          : short_description // ignore: cast_nullable_to_non_nullable
              as String?,
      average_rating: freezed == average_rating
          ? _value.average_rating
          : average_rating // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool?,
      date_created: freezed == date_created
          ? _value.date_created
          : date_created // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageProduct>,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<ProductTags>?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as List<MetaData>?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategories>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product implements _Product {
  _$_Product(
      {required this.id,
      required this.name,
      this.price,
      this.regular_price,
      this.description,
      this.short_description,
      this.average_rating,
      this.type,
      this.featured,
      this.date_created,
      final List<ImageProduct> images = const <ImageProduct>[],
      final List<ProductTags>? tags = const <ProductTags>[],
      final List<MetaData>? metadata = const <MetaData>[],
      final List<ProductCategories>? categories = const <ProductCategories>[]})
      : _images = images,
        _tags = tags,
        _metadata = metadata,
        _categories = categories;

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? price;
  @override
  final String? regular_price;
  @override
  final String? description;
  @override
  final String? short_description;
  @override
  final String? average_rating;
  @override
  final String? type;
  @override
  final bool? featured;
  @override
  final String? date_created;
  final List<ImageProduct> _images;
  @override
  @JsonKey()
  List<ImageProduct> get images {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
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

  final List<MetaData>? _metadata;
  @override
  @JsonKey()
  List<MetaData>? get metadata {
    final value = _metadata;
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

  @override
  String toString() {
    return 'Product(id: $id, name: $name, price: $price, regular_price: $regular_price, description: $description, short_description: $short_description, average_rating: $average_rating, type: $type, featured: $featured, date_created: $date_created, images: $images, tags: $tags, metadata: $metadata, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.regular_price, regular_price) ||
                other.regular_price == regular_price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.short_description, short_description) ||
                other.short_description == short_description) &&
            (identical(other.average_rating, average_rating) ||
                other.average_rating == average_rating) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.featured, featured) ||
                other.featured == featured) &&
            (identical(other.date_created, date_created) ||
                other.date_created == date_created) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      price,
      regular_price,
      description,
      short_description,
      average_rating,
      type,
      featured,
      date_created,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_metadata),
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  factory _Product(
      {required final int id,
      required final String name,
      final String? price,
      final String? regular_price,
      final String? description,
      final String? short_description,
      final String? average_rating,
      final String? type,
      final bool? featured,
      final String? date_created,
      final List<ImageProduct> images,
      final List<ProductTags>? tags,
      final List<MetaData>? metadata,
      final List<ProductCategories>? categories}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get price;
  @override
  String? get regular_price;
  @override
  String? get description;
  @override
  String? get short_description;
  @override
  String? get average_rating;
  @override
  String? get type;
  @override
  bool? get featured;
  @override
  String? get date_created;
  @override
  List<ImageProduct> get images;
  @override
  List<ProductTags>? get tags;
  @override
  List<MetaData>? get metadata;
  @override
  List<ProductCategories>? get categories;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
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

mixin _$ProductScore{
  int get id => throw _privateConstructorUsedError;


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

MetaData _$MetaDataFromJson(Map<String, dynamic> json) {
  return _MetaData.fromJson(json);
}

/// @nodoc
mixin _$MetaData {
  int get id => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

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
  $Res call({int id, String key, String value});
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
              as String,
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
  $Res call({int id, String key, String value});
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
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaData implements _MetaData {
  _$_MetaData({required this.id, required this.key, required this.value});

  factory _$_MetaData.fromJson(Map<String, dynamic> json) =>
      _$$_MetaDataFromJson(json);

  @override
  final int id;
  @override
  final String key;
  @override
  final String value;

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
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, key, value);

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
      required final String value}) = _$_MetaData;

  factory _MetaData.fromJson(Map<String, dynamic> json) = _$_MetaData.fromJson;

  @override
  int get id;
  @override
  String get key;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_MetaDataCopyWith<_$_MetaData> get copyWith =>
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

ProductCategories _$ProductCategoriesFromJson(Map<String, dynamic> json) {
  return _ProductCategories.fromJson(json);
}

/// @nodoc
mixin _$ProductCategories {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;

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
  $Res call({int id, String name, String slug});
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
abstract class _$$_ProductCategoriesCopyWith<$Res>
    implements $ProductCategoriesCopyWith<$Res> {
  factory _$$_ProductCategoriesCopyWith(_$_ProductCategories value,
          $Res Function(_$_ProductCategories) then) =
      __$$_ProductCategoriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String slug});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductCategories implements _ProductCategories {
  _$_ProductCategories(
      {required this.id, required this.name, required this.slug});

  factory _$_ProductCategories.fromJson(Map<String, dynamic> json) =>
      _$$_ProductCategoriesFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String slug;

  @override
  String toString() {
    return 'ProductCategories(id: $id, name: $name, slug: $slug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductCategories &&
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
      required final String slug}) = _$_ProductCategories;

  factory _ProductCategories.fromJson(Map<String, dynamic> json) =
      _$_ProductCategories.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCategoriesCopyWith<_$_ProductCategories> get copyWith =>
      throw _privateConstructorUsedError;
}
