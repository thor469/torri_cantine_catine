// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reviews_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewsResponse _$ReviewsResponseFromJson(Map<String, dynamic> json) {
  return _ReviewsResponse.fromJson(json);
}

/// @nodoc
mixin _$ReviewsResponse {
  List<Review>? get reviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewsResponseCopyWith<ReviewsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewsResponseCopyWith<$Res> {
  factory $ReviewsResponseCopyWith(
          ReviewsResponse value, $Res Function(ReviewsResponse) then) =
      _$ReviewsResponseCopyWithImpl<$Res, ReviewsResponse>;
  @useResult
  $Res call({List<Review>? reviews});
}

/// @nodoc
class _$ReviewsResponseCopyWithImpl<$Res, $Val extends ReviewsResponse>
    implements $ReviewsResponseCopyWith<$Res> {
  _$ReviewsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviews = freezed,
  }) {
    return _then(_value.copyWith(
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReviewsResponseCopyWith<$Res>
    implements $ReviewsResponseCopyWith<$Res> {
  factory _$$_ReviewsResponseCopyWith(
          _$_ReviewsResponse value, $Res Function(_$_ReviewsResponse) then) =
      __$$_ReviewsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Review>? reviews});
}

/// @nodoc
class __$$_ReviewsResponseCopyWithImpl<$Res>
    extends _$ReviewsResponseCopyWithImpl<$Res, _$_ReviewsResponse>
    implements _$$_ReviewsResponseCopyWith<$Res> {
  __$$_ReviewsResponseCopyWithImpl(
      _$_ReviewsResponse _value, $Res Function(_$_ReviewsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviews = freezed,
  }) {
    return _then(_$_ReviewsResponse(
      reviews: freezed == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewsResponse implements _ReviewsResponse {
  _$_ReviewsResponse({final List<Review>? reviews = const <Review>[]})
      : _reviews = reviews;

  factory _$_ReviewsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewsResponseFromJson(json);

  final List<Review>? _reviews;
  @override
  @JsonKey()
  List<Review>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ReviewsResponse(reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewsResponse &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewsResponseCopyWith<_$_ReviewsResponse> get copyWith =>
      __$$_ReviewsResponseCopyWithImpl<_$_ReviewsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewsResponseToJson(
      this,
    );
  }
}

abstract class _ReviewsResponse implements ReviewsResponse {
  factory _ReviewsResponse({final List<Review>? reviews}) = _$_ReviewsResponse;

  factory _ReviewsResponse.fromJson(Map<String, dynamic> json) =
      _$_ReviewsResponse.fromJson;

  @override
  List<Review>? get reviews;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewsResponseCopyWith<_$_ReviewsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  int? get product_id => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  String? get reviewer => throw _privateConstructorUsedError;
  String? get date_created => throw _privateConstructorUsedError;
  String? get review => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call(
      {int? product_id,
      int? rating,
      String? reviewer,
      String? date_created,
      String? review});
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_id = freezed,
    Object? rating = freezed,
    Object? reviewer = freezed,
    Object? date_created = freezed,
    Object? review = freezed,
  }) {
    return _then(_value.copyWith(
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewer: freezed == reviewer
          ? _value.reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as String?,
      date_created: freezed == date_created
          ? _value.date_created
          : date_created // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$_ReviewCopyWith(_$_Review value, $Res Function(_$_Review) then) =
      __$$_ReviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? product_id,
      int? rating,
      String? reviewer,
      String? date_created,
      String? review});
}

/// @nodoc
class __$$_ReviewCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$_Review>
    implements _$$_ReviewCopyWith<$Res> {
  __$$_ReviewCopyWithImpl(_$_Review _value, $Res Function(_$_Review) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_id = freezed,
    Object? rating = freezed,
    Object? reviewer = freezed,
    Object? date_created = freezed,
    Object? review = freezed,
  }) {
    return _then(_$_Review(
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewer: freezed == reviewer
          ? _value.reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as String?,
      date_created: freezed == date_created
          ? _value.date_created
          : date_created // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Review implements _Review {
  _$_Review(
      {this.product_id,
      this.rating,
      this.reviewer,
      this.date_created,
      this.review});

  factory _$_Review.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewFromJson(json);

  @override
  final int? product_id;
  @override
  final int? rating;
  @override
  final String? reviewer;
  @override
  final String? date_created;
  @override
  final String? review;

  @override
  String toString() {
    return 'Review(product_id: $product_id, rating: $rating, reviewer: $reviewer, date_created: $date_created, review: $review)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Review &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewer, reviewer) ||
                other.reviewer == reviewer) &&
            (identical(other.date_created, date_created) ||
                other.date_created == date_created) &&
            (identical(other.review, review) || other.review == review));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, product_id, rating, reviewer, date_created, review);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      __$$_ReviewCopyWithImpl<_$_Review>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  factory _Review(
      {final int? product_id,
      final int? rating,
      final String? reviewer,
      final String? date_created,
      final String? review}) = _$_Review;

  factory _Review.fromJson(Map<String, dynamic> json) = _$_Review.fromJson;

  @override
  int? get product_id;
  @override
  int? get rating;
  @override
  String? get reviewer;
  @override
  String? get date_created;
  @override
  String? get review;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      throw _privateConstructorUsedError;
}
