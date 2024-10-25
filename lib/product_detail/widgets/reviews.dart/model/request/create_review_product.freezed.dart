// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_review_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateReviewProduct _$CreateReviewProductFromJson(Map<String, dynamic> json) {
  return _CreateReviewProduct.fromJson(json);
}

/// @nodoc
mixin _$CreateReviewProduct {
  int get product_id => throw _privateConstructorUsedError;
  String? get review => throw _privateConstructorUsedError;
  String? get reviewer => throw _privateConstructorUsedError;
  String? get reviewer_email => throw _privateConstructorUsedError;
  String? get date_created => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateReviewProductCopyWith<CreateReviewProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateReviewProductCopyWith<$Res> {
  factory $CreateReviewProductCopyWith(
          CreateReviewProduct value, $Res Function(CreateReviewProduct) then) =
      _$CreateReviewProductCopyWithImpl<$Res, CreateReviewProduct>;
  @useResult
  $Res call(
      {int product_id,
      String? review,
      String? reviewer,
      String? reviewer_email,
      String? date_created,
      int? rating});
}

/// @nodoc
class _$CreateReviewProductCopyWithImpl<$Res, $Val extends CreateReviewProduct>
    implements $CreateReviewProductCopyWith<$Res> {
  _$CreateReviewProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_id = null,
    Object? review = freezed,
    Object? reviewer = freezed,
    Object? reviewer_email = freezed,
    Object? date_created = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      product_id: null == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewer: freezed == reviewer
          ? _value.reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewer_email: freezed == reviewer_email
          ? _value.reviewer_email
          : reviewer_email // ignore: cast_nullable_to_non_nullable
              as String?,
      date_created: freezed == date_created
          ? _value.date_created
          : date_created // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateReviewProductCopyWith<$Res>
    implements $CreateReviewProductCopyWith<$Res> {
  factory _$$_CreateReviewProductCopyWith(_$_CreateReviewProduct value,
          $Res Function(_$_CreateReviewProduct) then) =
      __$$_CreateReviewProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int product_id,
      String? review,
      String? reviewer,
      String? reviewer_email,
      String? date_created,
      int? rating});
}

/// @nodoc
class __$$_CreateReviewProductCopyWithImpl<$Res>
    extends _$CreateReviewProductCopyWithImpl<$Res, _$_CreateReviewProduct>
    implements _$$_CreateReviewProductCopyWith<$Res> {
  __$$_CreateReviewProductCopyWithImpl(_$_CreateReviewProduct _value,
      $Res Function(_$_CreateReviewProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_id = null,
    Object? review = freezed,
    Object? reviewer = freezed,
    Object? reviewer_email = freezed,
    Object? date_created = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$_CreateReviewProduct(
      product_id: null == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewer: freezed == reviewer
          ? _value.reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewer_email: freezed == reviewer_email
          ? _value.reviewer_email
          : reviewer_email // ignore: cast_nullable_to_non_nullable
              as String?,
      date_created: freezed == date_created
          ? _value.date_created
          : date_created // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateReviewProduct extends _CreateReviewProduct {
  _$_CreateReviewProduct(
      {required this.product_id,
      this.review,
      this.reviewer,
      this.reviewer_email,
      this.date_created,
      this.rating})
      : super._();

  factory _$_CreateReviewProduct.fromJson(Map<String, dynamic> json) =>
      _$$_CreateReviewProductFromJson(json);

  @override
  final int product_id;
  @override
  final String? review;
  @override
  final String? reviewer;
  @override
  final String? reviewer_email;
  @override
  final String? date_created;
  @override
  final int? rating;

  @override
  String toString() {
    return 'CreateReviewProduct(product_id: $product_id, review: $review, reviewer: $reviewer, reviewer_email: $reviewer_email, date_created: $date_created, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateReviewProduct &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.reviewer, reviewer) ||
                other.reviewer == reviewer) &&
            (identical(other.reviewer_email, reviewer_email) ||
                other.reviewer_email == reviewer_email) &&
            (identical(other.date_created, date_created) ||
                other.date_created == date_created) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, product_id, review, reviewer,
      reviewer_email, date_created, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateReviewProductCopyWith<_$_CreateReviewProduct> get copyWith =>
      __$$_CreateReviewProductCopyWithImpl<_$_CreateReviewProduct>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateReviewProductToJson(
      this,
    );
  }
}

abstract class _CreateReviewProduct extends CreateReviewProduct {
  factory _CreateReviewProduct(
      {required final int product_id,
      final String? review,
      final String? reviewer,
      final String? reviewer_email,
      final String? date_created,
      final int? rating}) = _$_CreateReviewProduct;
  _CreateReviewProduct._() : super._();

  factory _CreateReviewProduct.fromJson(Map<String, dynamic> json) =
      _$_CreateReviewProduct.fromJson;

  @override
  int get product_id;
  @override
  String? get review;
  @override
  String? get reviewer;
  @override
  String? get reviewer_email;
  @override
  String? get date_created;
  @override
  int? get rating;
  @override
  @JsonKey(ignore: true)
  _$$_CreateReviewProductCopyWith<_$_CreateReviewProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
