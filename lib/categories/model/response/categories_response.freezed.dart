// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categories_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoriesResponse _$CategoriesResponseFromJson(Map<String, dynamic> json) {
  return _CategoriesResponse.fromJson(json);
}

/// @nodoc
mixin _$CategoriesResponse {
  List<ProductCategories>? get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesResponseCopyWith<CategoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesResponseCopyWith<$Res> {
  factory $CategoriesResponseCopyWith(
          CategoriesResponse value, $Res Function(CategoriesResponse) then) =
      _$CategoriesResponseCopyWithImpl<$Res, CategoriesResponse>;
  @useResult
  $Res call({List<ProductCategories>? categories});
}

/// @nodoc
class _$CategoriesResponseCopyWithImpl<$Res, $Val extends CategoriesResponse>
    implements $CategoriesResponseCopyWith<$Res> {
  _$CategoriesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategories>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoriesResponseCopyWith<$Res>
    implements $CategoriesResponseCopyWith<$Res> {
  factory _$$_CategoriesResponseCopyWith(_$_CategoriesResponse value,
          $Res Function(_$_CategoriesResponse) then) =
      __$$_CategoriesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductCategories>? categories});
}

/// @nodoc
class __$$_CategoriesResponseCopyWithImpl<$Res>
    extends _$CategoriesResponseCopyWithImpl<$Res, _$_CategoriesResponse>
    implements _$$_CategoriesResponseCopyWith<$Res> {
  __$$_CategoriesResponseCopyWithImpl(
      _$_CategoriesResponse _value, $Res Function(_$_CategoriesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_$_CategoriesResponse(
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategories>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoriesResponse implements _CategoriesResponse {
  _$_CategoriesResponse(
      {final List<ProductCategories>? categories = const <ProductCategories>[]})
      : _categories = categories;

  factory _$_CategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CategoriesResponseFromJson(json);

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
    return 'CategoriesResponse(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesResponse &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoriesResponseCopyWith<_$_CategoriesResponse> get copyWith =>
      __$$_CategoriesResponseCopyWithImpl<_$_CategoriesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoriesResponseToJson(
      this,
    );
  }
}

abstract class _CategoriesResponse implements CategoriesResponse {
  factory _CategoriesResponse({final List<ProductCategories>? categories}) =
      _$_CategoriesResponse;

  factory _CategoriesResponse.fromJson(Map<String, dynamic> json) =
      _$_CategoriesResponse.fromJson;

  @override
  List<ProductCategories>? get categories;
  @override
  @JsonKey(ignore: true)
  _$$_CategoriesResponseCopyWith<_$_CategoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
