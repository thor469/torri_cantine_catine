// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reviews_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewsRequest _$ReviewsRequestFromJson(Map<String, dynamic> json) {
  return _ReviewsRequest.fromJson(json);
}

/// @nodoc
mixin _$ReviewsRequest {
  List<int> get product => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get per_page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewsRequestCopyWith<ReviewsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewsRequestCopyWith<$Res> {
  factory $ReviewsRequestCopyWith(
          ReviewsRequest value, $Res Function(ReviewsRequest) then) =
      _$ReviewsRequestCopyWithImpl<$Res, ReviewsRequest>;
  @useResult
  $Res call({List<int> product, int page, int per_page});
}

/// @nodoc
class _$ReviewsRequestCopyWithImpl<$Res, $Val extends ReviewsRequest>
    implements $ReviewsRequestCopyWith<$Res> {
  _$ReviewsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? page = null,
    Object? per_page = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as List<int>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      per_page: null == per_page
          ? _value.per_page
          : per_page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReviewsRequestCopyWith<$Res>
    implements $ReviewsRequestCopyWith<$Res> {
  factory _$$_ReviewsRequestCopyWith(
          _$_ReviewsRequest value, $Res Function(_$_ReviewsRequest) then) =
      __$$_ReviewsRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> product, int page, int per_page});
}

/// @nodoc
class __$$_ReviewsRequestCopyWithImpl<$Res>
    extends _$ReviewsRequestCopyWithImpl<$Res, _$_ReviewsRequest>
    implements _$$_ReviewsRequestCopyWith<$Res> {
  __$$_ReviewsRequestCopyWithImpl(
      _$_ReviewsRequest _value, $Res Function(_$_ReviewsRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? page = null,
    Object? per_page = null,
  }) {
    return _then(_$_ReviewsRequest(
      product: null == product
          ? _value._product
          : product // ignore: cast_nullable_to_non_nullable
              as List<int>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      per_page: null == per_page
          ? _value.per_page
          : per_page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewsRequest extends _ReviewsRequest {
  _$_ReviewsRequest(
      {required final List<int> product,
      required this.page,
      required this.per_page})
      : _product = product,
        super._();

  factory _$_ReviewsRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewsRequestFromJson(json);

  final List<int> _product;
  @override
  List<int> get product {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_product);
  }

  @override
  final int page;
  @override
  final int per_page;

  @override
  String toString() {
    return 'ReviewsRequest(product: $product, page: $page, per_page: $per_page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewsRequest &&
            const DeepCollectionEquality().equals(other._product, _product) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.per_page, per_page) ||
                other.per_page == per_page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_product), page, per_page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewsRequestCopyWith<_$_ReviewsRequest> get copyWith =>
      __$$_ReviewsRequestCopyWithImpl<_$_ReviewsRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewsRequestToJson(
      this,
    );
  }
}

abstract class _ReviewsRequest extends ReviewsRequest {
  factory _ReviewsRequest(
      {required final List<int> product,
      required final int page,
      required final int per_page}) = _$_ReviewsRequest;
  _ReviewsRequest._() : super._();

  factory _ReviewsRequest.fromJson(Map<String, dynamic> json) =
      _$_ReviewsRequest.fromJson;

  @override
  List<int> get product;
  @override
  int get page;
  @override
  int get per_page;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewsRequestCopyWith<_$_ReviewsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
