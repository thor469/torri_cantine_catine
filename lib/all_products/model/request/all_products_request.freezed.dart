// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'all_products_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllProductsRequest _$AllProductsRequestFromJson(Map<String, dynamic> json) {
  return _AllProductsRequest.fromJson(json);
}

/// @nodoc
mixin _$AllProductsRequest {
  @JsonKey(name: "per_page")
  int get maxPages => throw _privateConstructorUsedError;
  @JsonKey(name: "page")
  int get pageNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "order")
  String? get order => throw _privateConstructorUsedError;
  @JsonKey(name: "orderby")
  String? get orderBy => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get productStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "catalog_visibility")
  String? get catalogVisibility => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllProductsRequestCopyWith<AllProductsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllProductsRequestCopyWith<$Res> {
  factory $AllProductsRequestCopyWith(
          AllProductsRequest value, $Res Function(AllProductsRequest) then) =
      _$AllProductsRequestCopyWithImpl<$Res, AllProductsRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "per_page") int maxPages,
      @JsonKey(name: "page") int pageNumber,
      @JsonKey(name: "order") String? order,
      @JsonKey(name: "orderby") String? orderBy,
      @JsonKey(name: "status") String? productStatus,
      @JsonKey(name: "catalog_visibility") String? catalogVisibility});
}

/// @nodoc
class _$AllProductsRequestCopyWithImpl<$Res, $Val extends AllProductsRequest>
    implements $AllProductsRequestCopyWith<$Res> {
  _$AllProductsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPages = null,
    Object? pageNumber = null,
    Object? order = freezed,
    Object? orderBy = freezed,
    Object? productStatus = freezed,
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
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
      orderBy: freezed == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as String?,
      productStatus: freezed == productStatus
          ? _value.productStatus
          : productStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      catalogVisibility: freezed == catalogVisibility
          ? _value.catalogVisibility
          : catalogVisibility // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AllProductsRequestCopyWith<$Res>
    implements $AllProductsRequestCopyWith<$Res> {
  factory _$$_AllProductsRequestCopyWith(_$_AllProductsRequest value,
          $Res Function(_$_AllProductsRequest) then) =
      __$$_AllProductsRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "per_page") int maxPages,
      @JsonKey(name: "page") int pageNumber,
      @JsonKey(name: "order") String? order,
      @JsonKey(name: "orderby") String? orderBy,
      @JsonKey(name: "status") String? productStatus,
      @JsonKey(name: "catalog_visibility") String? catalogVisibility});
}

/// @nodoc
class __$$_AllProductsRequestCopyWithImpl<$Res>
    extends _$AllProductsRequestCopyWithImpl<$Res, _$_AllProductsRequest>
    implements _$$_AllProductsRequestCopyWith<$Res> {
  __$$_AllProductsRequestCopyWithImpl(
      _$_AllProductsRequest _value, $Res Function(_$_AllProductsRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPages = null,
    Object? pageNumber = null,
    Object? order = freezed,
    Object? orderBy = freezed,
    Object? productStatus = freezed,
    Object? catalogVisibility = freezed,
  }) {
    return _then(_$_AllProductsRequest(
      maxPages: null == maxPages
          ? _value.maxPages
          : maxPages // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
      orderBy: freezed == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as String?,
      productStatus: freezed == productStatus
          ? _value.productStatus
          : productStatus // ignore: cast_nullable_to_non_nullable
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
class _$_AllProductsRequest extends _AllProductsRequest {
  _$_AllProductsRequest(
      {@JsonKey(name: "per_page") required this.maxPages,
      @JsonKey(name: "page") required this.pageNumber,
      @JsonKey(name: "order") this.order,
      @JsonKey(name: "orderby") this.orderBy,
      @JsonKey(name: "status") this.productStatus,
      @JsonKey(name: "catalog_visibility") this.catalogVisibility})
      : super._();

  factory _$_AllProductsRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AllProductsRequestFromJson(json);

  @override
  @JsonKey(name: "per_page")
  final int maxPages;
  @override
  @JsonKey(name: "page")
  final int pageNumber;
  @override
  @JsonKey(name: "order")
  final String? order;
  @override
  @JsonKey(name: "orderby")
  final String? orderBy;
  @override
  @JsonKey(name: "status")
  final String? productStatus;
  @override
  @JsonKey(name: "catalog_visibility")
  final String? catalogVisibility;

  @override
  String toString() {
    return 'AllProductsRequest(maxPages: $maxPages, pageNumber: $pageNumber, order: $order, orderBy: $orderBy, productStatus: $productStatus, catalogVisibility: $catalogVisibility)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllProductsRequest &&
            (identical(other.maxPages, maxPages) ||
                other.maxPages == maxPages) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.orderBy, orderBy) || other.orderBy == orderBy) &&
            (identical(other.productStatus, productStatus) ||
                other.productStatus == productStatus) &&
            (identical(other.catalogVisibility, catalogVisibility) ||
                other.catalogVisibility == catalogVisibility));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, maxPages, pageNumber, order,
      orderBy, productStatus, catalogVisibility);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllProductsRequestCopyWith<_$_AllProductsRequest> get copyWith =>
      __$$_AllProductsRequestCopyWithImpl<_$_AllProductsRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllProductsRequestToJson(
      this,
    );
  }
}

abstract class _AllProductsRequest extends AllProductsRequest {
  factory _AllProductsRequest(
      {@JsonKey(name: "per_page") required final int maxPages,
      @JsonKey(name: "page") required final int pageNumber,
      @JsonKey(name: "order") final String? order,
      @JsonKey(name: "orderby") final String? orderBy,
      @JsonKey(name: "status") final String? productStatus,
      @JsonKey(name: "catalog_visibility")
      final String? catalogVisibility}) = _$_AllProductsRequest;
  _AllProductsRequest._() : super._();

  factory _AllProductsRequest.fromJson(Map<String, dynamic> json) =
      _$_AllProductsRequest.fromJson;

  @override
  @JsonKey(name: "per_page")
  int get maxPages;
  @override
  @JsonKey(name: "page")
  int get pageNumber;
  @override
  @JsonKey(name: "order")
  String? get order;
  @override
  @JsonKey(name: "orderby")
  String? get orderBy;
  @override
  @JsonKey(name: "status")
  String? get productStatus;
  @override
  @JsonKey(name: "catalog_visibility")
  String? get catalogVisibility;
  @override
  @JsonKey(ignore: true)
  _$$_AllProductsRequestCopyWith<_$_AllProductsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
