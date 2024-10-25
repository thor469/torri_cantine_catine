// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_tags_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductTagsResponse _$ProductTagsResponseFromJson(Map<String, dynamic> json) {
  return _ProductTagsResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductTagsResponse {
  List<ProductTags>? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductTagsResponseCopyWith<ProductTagsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductTagsResponseCopyWith<$Res> {
  factory $ProductTagsResponseCopyWith(
          ProductTagsResponse value, $Res Function(ProductTagsResponse) then) =
      _$ProductTagsResponseCopyWithImpl<$Res, ProductTagsResponse>;
  @useResult
  $Res call({List<ProductTags>? tags});
}

/// @nodoc
class _$ProductTagsResponseCopyWithImpl<$Res, $Val extends ProductTagsResponse>
    implements $ProductTagsResponseCopyWith<$Res> {
  _$ProductTagsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<ProductTags>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductTagsResponseCopyWith<$Res>
    implements $ProductTagsResponseCopyWith<$Res> {
  factory _$$_ProductTagsResponseCopyWith(_$_ProductTagsResponse value,
          $Res Function(_$_ProductTagsResponse) then) =
      __$$_ProductTagsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductTags>? tags});
}

/// @nodoc
class __$$_ProductTagsResponseCopyWithImpl<$Res>
    extends _$ProductTagsResponseCopyWithImpl<$Res, _$_ProductTagsResponse>
    implements _$$_ProductTagsResponseCopyWith<$Res> {
  __$$_ProductTagsResponseCopyWithImpl(_$_ProductTagsResponse _value,
      $Res Function(_$_ProductTagsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = freezed,
  }) {
    return _then(_$_ProductTagsResponse(
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<ProductTags>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductTagsResponse implements _ProductTagsResponse {
  _$_ProductTagsResponse(
      {final List<ProductTags>? tags = const <ProductTags>[]})
      : _tags = tags;

  factory _$_ProductTagsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProductTagsResponseFromJson(json);

  final List<ProductTags>? _tags;
  @override
  @JsonKey()
  List<ProductTags>? get tags {
    final value = _tags;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductTagsResponse(tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductTagsResponse &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductTagsResponseCopyWith<_$_ProductTagsResponse> get copyWith =>
      __$$_ProductTagsResponseCopyWithImpl<_$_ProductTagsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductTagsResponseToJson(
      this,
    );
  }
}

abstract class _ProductTagsResponse implements ProductTagsResponse {
  factory _ProductTagsResponse({final List<ProductTags>? tags}) =
      _$_ProductTagsResponse;

  factory _ProductTagsResponse.fromJson(Map<String, dynamic> json) =
      _$_ProductTagsResponse.fromJson;

  @override
  List<ProductTags>? get tags;
  @override
  @JsonKey(ignore: true)
  _$$_ProductTagsResponseCopyWith<_$_ProductTagsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
