// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wishlist_products.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WishlistProductsRequest _$WishlistProductsRequestFromJson(
    Map<String, dynamic> json) {
  return _WishlistProductsRequest.fromJson(json);
}

/// @nodoc
mixin _$WishlistProductsRequest {
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishlistProductsRequestCopyWith<WishlistProductsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistProductsRequestCopyWith<$Res> {
  factory $WishlistProductsRequestCopyWith(WishlistProductsRequest value,
          $Res Function(WishlistProductsRequest) then) =
      _$WishlistProductsRequestCopyWithImpl<$Res, WishlistProductsRequest>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$WishlistProductsRequestCopyWithImpl<$Res,
        $Val extends WishlistProductsRequest>
    implements $WishlistProductsRequestCopyWith<$Res> {
  _$WishlistProductsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WishlistProductsRequestCopyWith<$Res>
    implements $WishlistProductsRequestCopyWith<$Res> {
  factory _$$_WishlistProductsRequestCopyWith(_$_WishlistProductsRequest value,
          $Res Function(_$_WishlistProductsRequest) then) =
      __$$_WishlistProductsRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_WishlistProductsRequestCopyWithImpl<$Res>
    extends _$WishlistProductsRequestCopyWithImpl<$Res,
        _$_WishlistProductsRequest>
    implements _$$_WishlistProductsRequestCopyWith<$Res> {
  __$$_WishlistProductsRequestCopyWithImpl(_$_WishlistProductsRequest _value,
      $Res Function(_$_WishlistProductsRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_WishlistProductsRequest(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WishlistProductsRequest extends _WishlistProductsRequest {
  _$_WishlistProductsRequest({required this.id}) : super._();

  factory _$_WishlistProductsRequest.fromJson(Map<String, dynamic> json) =>
      _$$_WishlistProductsRequestFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'WishlistProductsRequest(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WishlistProductsRequest &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WishlistProductsRequestCopyWith<_$_WishlistProductsRequest>
      get copyWith =>
          __$$_WishlistProductsRequestCopyWithImpl<_$_WishlistProductsRequest>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WishlistProductsRequestToJson(
      this,
    );
  }
}

abstract class _WishlistProductsRequest extends WishlistProductsRequest {
  factory _WishlistProductsRequest({required final int id}) =
      _$_WishlistProductsRequest;
  _WishlistProductsRequest._() : super._();

  factory _WishlistProductsRequest.fromJson(Map<String, dynamic> json) =
      _$_WishlistProductsRequest.fromJson;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_WishlistProductsRequestCopyWith<_$_WishlistProductsRequest>
      get copyWith => throw _privateConstructorUsedError;
}
