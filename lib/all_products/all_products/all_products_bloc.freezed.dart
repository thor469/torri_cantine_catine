// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'all_products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AllProductsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? page, String? orderBy, String? order) fetch,
    required TResult Function(int? page, String? categories, String? tags,
            String? minPrice, String? maxPrice, String? catalogVisibility)
        filterProducts,
    required TResult Function(List<dynamic>? ids) wishListProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? page, String? orderBy, String? order)? fetch,
    TResult? Function(int? page, String? categories, String? tags,
            String? minPrice, String? maxPrice, String? catalogVisibility)?
        filterProducts,
    TResult? Function(List<dynamic>? ids)? wishListProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? page, String? orderBy, String? order)? fetch,
    TResult Function(int? page, String? categories, String? tags,
            String? minPrice, String? maxPrice, String? catalogVisibility)?
        filterProducts,
    TResult Function(List<dynamic>? ids)? wishListProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FilterProducts value) filterProducts,
    required TResult Function(_WishlistProducts value) wishListProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FilterProducts value)? filterProducts,
    TResult? Function(_WishlistProducts value)? wishListProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FilterProducts value)? filterProducts,
    TResult Function(_WishlistProducts value)? wishListProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllProductsEventCopyWith<$Res> {
  factory $AllProductsEventCopyWith(
          AllProductsEvent value, $Res Function(AllProductsEvent) then) =
      _$AllProductsEventCopyWithImpl<$Res, AllProductsEvent>;
}

/// @nodoc
class _$AllProductsEventCopyWithImpl<$Res, $Val extends AllProductsEvent>
    implements $AllProductsEventCopyWith<$Res> {
  _$AllProductsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
  @useResult
  $Res call({int? page, String? orderBy, String? order});
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res>
    extends _$AllProductsEventCopyWithImpl<$Res, _$_Fetch>
    implements _$$_FetchCopyWith<$Res> {
  __$$_FetchCopyWithImpl(_$_Fetch _value, $Res Function(_$_Fetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? orderBy = freezed,
    Object? order = freezed,
  }) {
    return _then(_$_Fetch(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      orderBy: freezed == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Fetch implements _Fetch {
  const _$_Fetch({this.page, this.orderBy, this.order});

  @override
  final int? page;
  @override
  final String? orderBy;
  @override
  final String? order;

  @override
  String toString() {
    return 'AllProductsEvent.fetch(page: $page, orderBy: $orderBy, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fetch &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.orderBy, orderBy) || other.orderBy == orderBy) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, orderBy, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      __$$_FetchCopyWithImpl<_$_Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? page, String? orderBy, String? order) fetch,
    required TResult Function(int? page, String? categories, String? tags,
            String? minPrice, String? maxPrice, String? catalogVisibility)
        filterProducts,
    required TResult Function(List<dynamic>? ids) wishListProducts,
  }) {
    return fetch(page, orderBy, order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? page, String? orderBy, String? order)? fetch,
    TResult? Function(int? page, String? categories, String? tags,
            String? minPrice, String? maxPrice, String? catalogVisibility)?
        filterProducts,
    TResult? Function(List<dynamic>? ids)? wishListProducts,
  }) {
    return fetch?.call(page, orderBy, order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? page, String? orderBy, String? order)? fetch,
    TResult Function(int? page, String? categories, String? tags,
            String? minPrice, String? maxPrice, String? catalogVisibility)?
        filterProducts,
    TResult Function(List<dynamic>? ids)? wishListProducts,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(page, orderBy, order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FilterProducts value) filterProducts,
    required TResult Function(_WishlistProducts value) wishListProducts,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FilterProducts value)? filterProducts,
    TResult? Function(_WishlistProducts value)? wishListProducts,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FilterProducts value)? filterProducts,
    TResult Function(_WishlistProducts value)? wishListProducts,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements AllProductsEvent {
  const factory _Fetch(
      {final int? page, final String? orderBy, final String? order}) = _$_Fetch;

  int? get page;
  String? get orderBy;
  String? get order;
  @JsonKey(ignore: true)
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FilterProductsCopyWith<$Res> {
  factory _$$_FilterProductsCopyWith(
          _$_FilterProducts value, $Res Function(_$_FilterProducts) then) =
      __$$_FilterProductsCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int? page,
      String? categories,
      String? tags,
      String? minPrice,
      String? maxPrice,
      String? catalogVisibility});
}

/// @nodoc
class __$$_FilterProductsCopyWithImpl<$Res>
    extends _$AllProductsEventCopyWithImpl<$Res, _$_FilterProducts>
    implements _$$_FilterProductsCopyWith<$Res> {
  __$$_FilterProductsCopyWithImpl(
      _$_FilterProducts _value, $Res Function(_$_FilterProducts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? categories = freezed,
    Object? tags = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? catalogVisibility = freezed,
  }) {
    return _then(_$_FilterProducts(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      catalogVisibility: freezed == catalogVisibility
          ? _value.catalogVisibility
          : catalogVisibility // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FilterProducts implements _FilterProducts {
  const _$_FilterProducts(
      {this.page,
      this.categories,
      this.tags,
      this.minPrice,
      this.maxPrice,
      this.catalogVisibility});

  @override
  final int? page;
  @override
  final String? categories;
  @override
  final String? tags;
  @override
  final String? minPrice;
  @override
  final String? maxPrice;
  @override
  final String? catalogVisibility;

  @override
  String toString() {
    return 'AllProductsEvent.filterProducts(page: $page, categories: $categories, tags: $tags, minPrice: $minPrice, maxPrice: $maxPrice, catalogVisibility: $catalogVisibility)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterProducts &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.categories, categories) ||
                other.categories == categories) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.catalogVisibility, catalogVisibility) ||
                other.catalogVisibility == catalogVisibility));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, categories, tags, minPrice,
      maxPrice, catalogVisibility);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterProductsCopyWith<_$_FilterProducts> get copyWith =>
      __$$_FilterProductsCopyWithImpl<_$_FilterProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? page, String? orderBy, String? order) fetch,
    required TResult Function(int? page, String? categories, String? tags,
            String? minPrice, String? maxPrice, String? catalogVisibility)
        filterProducts,
    required TResult Function(List<dynamic>? ids) wishListProducts,
  }) {
    return filterProducts(
        page, categories, tags, minPrice, maxPrice, catalogVisibility);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? page, String? orderBy, String? order)? fetch,
    TResult? Function(int? page, String? categories, String? tags,
            String? minPrice, String? maxPrice, String? catalogVisibility)?
        filterProducts,
    TResult? Function(List<dynamic>? ids)? wishListProducts,
  }) {
    return filterProducts?.call(
        page, categories, tags, minPrice, maxPrice, catalogVisibility);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? page, String? orderBy, String? order)? fetch,
    TResult Function(int? page, String? categories, String? tags,
            String? minPrice, String? maxPrice, String? catalogVisibility)?
        filterProducts,
    TResult Function(List<dynamic>? ids)? wishListProducts,
    required TResult orElse(),
  }) {
    if (filterProducts != null) {
      return filterProducts(
          page, categories, tags, minPrice, maxPrice, catalogVisibility);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FilterProducts value) filterProducts,
    required TResult Function(_WishlistProducts value) wishListProducts,
  }) {
    return filterProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FilterProducts value)? filterProducts,
    TResult? Function(_WishlistProducts value)? wishListProducts,
  }) {
    return filterProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FilterProducts value)? filterProducts,
    TResult Function(_WishlistProducts value)? wishListProducts,
    required TResult orElse(),
  }) {
    if (filterProducts != null) {
      return filterProducts(this);
    }
    return orElse();
  }
}

abstract class _FilterProducts implements AllProductsEvent {
  const factory _FilterProducts(
      {final int? page,
      final String? categories,
      final String? tags,
      final String? minPrice,
      final String? maxPrice,
      final String? catalogVisibility}) = _$_FilterProducts;

  int? get page;
  String? get categories;
  String? get tags;
  String? get minPrice;
  String? get maxPrice;
  String? get catalogVisibility;
  @JsonKey(ignore: true)
  _$$_FilterProductsCopyWith<_$_FilterProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WishlistProductsCopyWith<$Res> {
  factory _$$_WishlistProductsCopyWith(
          _$_WishlistProducts value, $Res Function(_$_WishlistProducts) then) =
      __$$_WishlistProductsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic>? ids});
}

/// @nodoc
class __$$_WishlistProductsCopyWithImpl<$Res>
    extends _$AllProductsEventCopyWithImpl<$Res, _$_WishlistProducts>
    implements _$$_WishlistProductsCopyWith<$Res> {
  __$$_WishlistProductsCopyWithImpl(
      _$_WishlistProducts _value, $Res Function(_$_WishlistProducts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = freezed,
  }) {
    return _then(_$_WishlistProducts(
      ids: freezed == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc

class _$_WishlistProducts implements _WishlistProducts {
  const _$_WishlistProducts({final List<dynamic>? ids}) : _ids = ids;

  final List<dynamic>? _ids;
  @override
  List<dynamic>? get ids {
    final value = _ids;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AllProductsEvent.wishListProducts(ids: $ids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WishlistProducts &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WishlistProductsCopyWith<_$_WishlistProducts> get copyWith =>
      __$$_WishlistProductsCopyWithImpl<_$_WishlistProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? page, String? orderBy, String? order) fetch,
    required TResult Function(int? page, String? categories, String? tags,
            String? minPrice, String? maxPrice, String? catalogVisibility)
        filterProducts,
    required TResult Function(List<dynamic>? ids) wishListProducts,
  }) {
    return wishListProducts(ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? page, String? orderBy, String? order)? fetch,
    TResult? Function(int? page, String? categories, String? tags,
            String? minPrice, String? maxPrice, String? catalogVisibility)?
        filterProducts,
    TResult? Function(List<dynamic>? ids)? wishListProducts,
  }) {
    return wishListProducts?.call(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? page, String? orderBy, String? order)? fetch,
    TResult Function(int? page, String? categories, String? tags,
            String? minPrice, String? maxPrice, String? catalogVisibility)?
        filterProducts,
    TResult Function(List<dynamic>? ids)? wishListProducts,
    required TResult orElse(),
  }) {
    if (wishListProducts != null) {
      return wishListProducts(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FilterProducts value) filterProducts,
    required TResult Function(_WishlistProducts value) wishListProducts,
  }) {
    return wishListProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FilterProducts value)? filterProducts,
    TResult? Function(_WishlistProducts value)? wishListProducts,
  }) {
    return wishListProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FilterProducts value)? filterProducts,
    TResult Function(_WishlistProducts value)? wishListProducts,
    required TResult orElse(),
  }) {
    if (wishListProducts != null) {
      return wishListProducts(this);
    }
    return orElse();
  }
}

abstract class _WishlistProducts implements AllProductsEvent {
  const factory _WishlistProducts({final List<dynamic>? ids}) =
      _$_WishlistProducts;

  List<dynamic>? get ids;
  @JsonKey(ignore: true)
  _$$_WishlistProductsCopyWith<_$_WishlistProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AllProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Product> model, int pageNumber) loading,
    required TResult Function(List<Product> model, int pageNumber) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Product> model, int pageNumber)? loading,
    TResult? Function(List<Product> model, int pageNumber)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Product> model, int pageNumber)? loading,
    TResult Function(List<Product> model, int pageNumber)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllProductsStateCopyWith<$Res> {
  factory $AllProductsStateCopyWith(
          AllProductsState value, $Res Function(AllProductsState) then) =
      _$AllProductsStateCopyWithImpl<$Res, AllProductsState>;
}

/// @nodoc
class _$AllProductsStateCopyWithImpl<$Res, $Val extends AllProductsState>
    implements $AllProductsStateCopyWith<$Res> {
  _$AllProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AllProductsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AllProductsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Product> model, int pageNumber) loading,
    required TResult Function(List<Product> model, int pageNumber) loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Product> model, int pageNumber)? loading,
    TResult? Function(List<Product> model, int pageNumber)? loaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Product> model, int pageNumber)? loading,
    TResult Function(List<Product> model, int pageNumber)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AllProductsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Product> model, int pageNumber});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$AllProductsStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? pageNumber = null,
  }) {
    return _then(_$_Loading(
      null == model
          ? _value._model
          : model // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading(final List<Product> model, this.pageNumber) : _model = model;

  final List<Product> _model;
  @override
  List<Product> get model {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_model);
  }

  @override
  final int pageNumber;

  @override
  String toString() {
    return 'AllProductsState.loading(model: $model, pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            const DeepCollectionEquality().equals(other._model, _model) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_model), pageNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Product> model, int pageNumber) loading,
    required TResult Function(List<Product> model, int pageNumber) loaded,
    required TResult Function() error,
  }) {
    return loading(model, pageNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Product> model, int pageNumber)? loading,
    TResult? Function(List<Product> model, int pageNumber)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call(model, pageNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Product> model, int pageNumber)? loading,
    TResult Function(List<Product> model, int pageNumber)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(model, pageNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AllProductsState {
  const factory _Loading(final List<Product> model, final int pageNumber) =
      _$_Loading;

  List<Product> get model;
  int get pageNumber;
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Product> model, int pageNumber});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$AllProductsStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? pageNumber = null,
  }) {
    return _then(_$_Loaded(
      null == model
          ? _value._model
          : model // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(final List<Product> model, this.pageNumber) : _model = model;

  final List<Product> _model;
  @override
  List<Product> get model {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_model);
  }

  @override
  final int pageNumber;

  @override
  String toString() {
    return 'AllProductsState.loaded(model: $model, pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._model, _model) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_model), pageNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Product> model, int pageNumber) loading,
    required TResult Function(List<Product> model, int pageNumber) loaded,
    required TResult Function() error,
  }) {
    return loaded(model, pageNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Product> model, int pageNumber)? loading,
    TResult? Function(List<Product> model, int pageNumber)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(model, pageNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Product> model, int pageNumber)? loading,
    TResult Function(List<Product> model, int pageNumber)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(model, pageNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements AllProductsState {
  const factory _Loaded(final List<Product> model, final int pageNumber) =
      _$_Loaded;

  List<Product> get model;
  int get pageNumber;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$AllProductsStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'AllProductsState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Product> model, int pageNumber) loading,
    required TResult Function(List<Product> model, int pageNumber) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Product> model, int pageNumber)? loading,
    TResult? Function(List<Product> model, int pageNumber)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Product> model, int pageNumber)? loading,
    TResult Function(List<Product> model, int pageNumber)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AllProductsState {
  const factory _Error() = _$_Error;
}
