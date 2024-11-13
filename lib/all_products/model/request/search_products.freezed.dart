// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_products.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchProducts _$SearchProductsFromJson(Map<String, dynamic> json) {
  return _SearchProducts.fromJson(json);
}

/// @nodoc
mixin _$SearchProducts {
  @JsonKey(name: "filter[limit]")
  int get maxPages => throw _privateConstructorUsedError;
  @JsonKey(name: "page")
  int get pageNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int get limit => throw _privateConstructorUsedError;
  @JsonKey(name: "search")
  String? get query => throw _privateConstructorUsedError;
  @JsonKey(name: "catalog_visibility")
  String? get catalogVisibility => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchProductsCopyWith<SearchProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductsCopyWith<$Res> {
  factory $SearchProductsCopyWith(
          SearchProducts value, $Res Function(SearchProducts) then) =
      _$SearchProductsCopyWithImpl<$Res, SearchProducts>;
  @useResult
  $Res call(
      {@JsonKey(name: "filter[limit]") int maxPages,
      @JsonKey(name: "page") int pageNumber,
      @JsonKey(name: "per_page") int limit,
      @JsonKey(name: "search") String? query,
      @JsonKey(name: "catalog_visibility") String? catalogVisibility});
}

/// @nodoc
class _$SearchProductsCopyWithImpl<$Res, $Val extends SearchProducts>
    implements $SearchProductsCopyWith<$Res> {
  _$SearchProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPages = null,
    Object? pageNumber = null,
    Object? limit = null,
    Object? query = freezed,
    Object? catalogVisibility = freezed,
  }) {
    return _then(_value.copyWith(
      maxPages: null == maxPages
          ? _value.maxPages
          : maxPages // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      catalogVisibility: freezed == catalogVisibility
          ? _value.catalogVisibility
          : catalogVisibility // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchProductsCopyWith<$Res>
    implements $SearchProductsCopyWith<$Res> {
  factory _$$_SearchProductsCopyWith(
          _$_SearchProducts value, $Res Function(_$_SearchProducts) then) =
      __$$_SearchProductsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "filter[limit]") int maxPages,
      @JsonKey(name: "page") int pageNumber,
      @JsonKey(name: "per_page") int limit,
      @JsonKey(name: "search") String? query,
      @JsonKey(name: "catalog_visibility") String? catalogVisibility});
}

/// @nodoc
class __$$_SearchProductsCopyWithImpl<$Res>
    extends _$SearchProductsCopyWithImpl<$Res, _$_SearchProducts>
    implements _$$_SearchProductsCopyWith<$Res> {
  __$$_SearchProductsCopyWithImpl(
      _$_SearchProducts _value, $Res Function(_$_SearchProducts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPages = null,
    Object? pageNumber = null,
    Object? limit = null,
    Object? query = freezed,
    Object? catalogVisibility = freezed,
  }) {
    return _then(_$_SearchProducts(
      maxPages: null == maxPages
          ? _value.maxPages
          : maxPages // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      catalogVisibility: freezed == catalogVisibility
          ? _value.catalogVisibility
          : catalogVisibility // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchProducts extends _SearchProducts {
  _$_SearchProducts(
      {@JsonKey(name: "filter[limit]") required this.maxPages,
      @JsonKey(name: "page") required this.pageNumber,
      @JsonKey(name: "per_page") required this.limit,
      @JsonKey(name: "search") this.query,
      @JsonKey(name: "catalog_visibility") this.catalogVisibility})
      : super._();

  factory _$_SearchProducts.fromJson(Map<String, dynamic> json) =>
      _$$_SearchProductsFromJson(json);

  @override
  @JsonKey(name: "filter[limit]")
  final int maxPages;
  @override
  @JsonKey(name: "page")
  final int pageNumber;
  @override
  @JsonKey(name: "per_page")
  final int limit;
  @override
  @JsonKey(name: "search")
  final String? query;
  @override
  @JsonKey(name: "catalog_visibility")
  final String? catalogVisibility;

  @override
  String toString() {
    return 'SearchProducts(maxPages: $maxPages, pageNumber: $pageNumber, limit: $limit, query: $query, catalogVisibility: $catalogVisibility)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchProducts &&
            (identical(other.maxPages, maxPages) ||
                other.maxPages == maxPages) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.catalogVisibility, catalogVisibility) ||
                other.catalogVisibility == catalogVisibility));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, maxPages, pageNumber, limit, query, catalogVisibility);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchProductsCopyWith<_$_SearchProducts> get copyWith =>
      __$$_SearchProductsCopyWithImpl<_$_SearchProducts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchProductsToJson(
      this,
    );
  }
}

abstract class _SearchProducts extends SearchProducts {
  factory _SearchProducts(
      {@JsonKey(name: "filter[limit]") required final int maxPages,
      @JsonKey(name: "page") required final int pageNumber,
      @JsonKey(name: "per_page") required final int limit,
      @JsonKey(name: "search") final String? query,
      @JsonKey(name: "catalog_visibility")
      final String? catalogVisibility}) = _$_SearchProducts;
  _SearchProducts._() : super._();

  factory _SearchProducts.fromJson(Map<String, dynamic> json) =
      _$_SearchProducts.fromJson;

  @override
  @JsonKey(name: "filter[limit]")
  int get maxPages;
  @override
  @JsonKey(name: "page")
  int get pageNumber;
  @override
  @JsonKey(name: "per_page")
  int get limit;
  @override
  @JsonKey(name: "search")
  String? get query;
  @override
  @JsonKey(name: "catalog_visibility")
  String? get catalogVisibility;
  @override
  @JsonKey(ignore: true)
  _$$_SearchProductsCopyWith<_$_SearchProducts> get copyWith =>
      throw _privateConstructorUsedError;
}
