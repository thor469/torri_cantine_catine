// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_detail_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDetailRequest _$ProductDetailRequestFromJson(Map<String, dynamic> json) {
  return _ProductDetailRequest.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailRequest {
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailRequestCopyWith<ProductDetailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailRequestCopyWith<$Res> {
  factory $ProductDetailRequestCopyWith(ProductDetailRequest value,
          $Res Function(ProductDetailRequest) then) =
      _$ProductDetailRequestCopyWithImpl<$Res, ProductDetailRequest>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$ProductDetailRequestCopyWithImpl<$Res,
        $Val extends ProductDetailRequest>
    implements $ProductDetailRequestCopyWith<$Res> {
  _$ProductDetailRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$_ProductDetailRequestCopyWith<$Res>
    implements $ProductDetailRequestCopyWith<$Res> {
  factory _$$_ProductDetailRequestCopyWith(_$_ProductDetailRequest value,
          $Res Function(_$_ProductDetailRequest) then) =
      __$$_ProductDetailRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_ProductDetailRequestCopyWithImpl<$Res>
    extends _$ProductDetailRequestCopyWithImpl<$Res, _$_ProductDetailRequest>
    implements _$$_ProductDetailRequestCopyWith<$Res> {
  __$$_ProductDetailRequestCopyWithImpl(_$_ProductDetailRequest _value,
      $Res Function(_$_ProductDetailRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_ProductDetailRequest(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDetailRequest extends _ProductDetailRequest {
  _$_ProductDetailRequest({required this.id}) : super._();

  factory _$_ProductDetailRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDetailRequestFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'ProductDetailRequest(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDetailRequest &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDetailRequestCopyWith<_$_ProductDetailRequest> get copyWith =>
      __$$_ProductDetailRequestCopyWithImpl<_$_ProductDetailRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDetailRequestToJson(
      this,
    );
  }
}

abstract class _ProductDetailRequest extends ProductDetailRequest {
  factory _ProductDetailRequest({required final int id}) =
      _$_ProductDetailRequest;
  _ProductDetailRequest._() : super._();

  factory _ProductDetailRequest.fromJson(Map<String, dynamic> json) =
      _$_ProductDetailRequest.fromJson;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDetailRequestCopyWith<_$_ProductDetailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
