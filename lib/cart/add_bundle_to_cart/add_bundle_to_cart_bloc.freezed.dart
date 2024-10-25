// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_bundle_to_cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddBundleToCartEvent {
  Map<dynamic, dynamic> get data => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id, Map<dynamic, dynamic> data, String cartUrl, int quantity)
        addBundle,
    required TResult Function(
            String key, Map<dynamic, dynamic> data, int quantity)
        updateBundle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id, Map<dynamic, dynamic> data, String cartUrl, int quantity)?
        addBundle,
    TResult? Function(String key, Map<dynamic, dynamic> data, int quantity)?
        updateBundle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id, Map<dynamic, dynamic> data, String cartUrl, int quantity)?
        addBundle,
    TResult Function(String key, Map<dynamic, dynamic> data, int quantity)?
        updateBundle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddBundle value) addBundle,
    required TResult Function(_UpdateBundle value) updateBundle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddBundle value)? addBundle,
    TResult? Function(_UpdateBundle value)? updateBundle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddBundle value)? addBundle,
    TResult Function(_UpdateBundle value)? updateBundle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddBundleToCartEventCopyWith<AddBundleToCartEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddBundleToCartEventCopyWith<$Res> {
  factory $AddBundleToCartEventCopyWith(AddBundleToCartEvent value,
          $Res Function(AddBundleToCartEvent) then) =
      _$AddBundleToCartEventCopyWithImpl<$Res, AddBundleToCartEvent>;
  @useResult
  $Res call({Map<dynamic, dynamic> data, int quantity});
}

/// @nodoc
class _$AddBundleToCartEventCopyWithImpl<$Res,
        $Val extends AddBundleToCartEvent>
    implements $AddBundleToCartEventCopyWith<$Res> {
  _$AddBundleToCartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddBundleCopyWith<$Res>
    implements $AddBundleToCartEventCopyWith<$Res> {
  factory _$$_AddBundleCopyWith(
          _$_AddBundle value, $Res Function(_$_AddBundle) then) =
      __$$_AddBundleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, Map<dynamic, dynamic> data, String cartUrl, int quantity});
}

/// @nodoc
class __$$_AddBundleCopyWithImpl<$Res>
    extends _$AddBundleToCartEventCopyWithImpl<$Res, _$_AddBundle>
    implements _$$_AddBundleCopyWith<$Res> {
  __$$_AddBundleCopyWithImpl(
      _$_AddBundle _value, $Res Function(_$_AddBundle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
    Object? cartUrl = null,
    Object? quantity = null,
  }) {
    return _then(_$_AddBundle(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      null == cartUrl
          ? _value.cartUrl
          : cartUrl // ignore: cast_nullable_to_non_nullable
              as String,
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AddBundle with DiagnosticableTreeMixin implements _AddBundle {
  const _$_AddBundle(
      this.id, final Map<dynamic, dynamic> data, this.cartUrl, this.quantity)
      : _data = data;

  @override
  final int id;
  final Map<dynamic, dynamic> _data;
  @override
  Map<dynamic, dynamic> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final String cartUrl;
  @override
  final int quantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddBundleToCartEvent.addBundle(id: $id, data: $data, cartUrl: $cartUrl, quantity: $quantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddBundleToCartEvent.addBundle'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('cartUrl', cartUrl))
      ..add(DiagnosticsProperty('quantity', quantity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddBundle &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.cartUrl, cartUrl) || other.cartUrl == cartUrl) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_data), cartUrl, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddBundleCopyWith<_$_AddBundle> get copyWith =>
      __$$_AddBundleCopyWithImpl<_$_AddBundle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id, Map<dynamic, dynamic> data, String cartUrl, int quantity)
        addBundle,
    required TResult Function(
            String key, Map<dynamic, dynamic> data, int quantity)
        updateBundle,
  }) {
    return addBundle(id, data, cartUrl, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id, Map<dynamic, dynamic> data, String cartUrl, int quantity)?
        addBundle,
    TResult? Function(String key, Map<dynamic, dynamic> data, int quantity)?
        updateBundle,
  }) {
    return addBundle?.call(id, data, cartUrl, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id, Map<dynamic, dynamic> data, String cartUrl, int quantity)?
        addBundle,
    TResult Function(String key, Map<dynamic, dynamic> data, int quantity)?
        updateBundle,
    required TResult orElse(),
  }) {
    if (addBundle != null) {
      return addBundle(id, data, cartUrl, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddBundle value) addBundle,
    required TResult Function(_UpdateBundle value) updateBundle,
  }) {
    return addBundle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddBundle value)? addBundle,
    TResult? Function(_UpdateBundle value)? updateBundle,
  }) {
    return addBundle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddBundle value)? addBundle,
    TResult Function(_UpdateBundle value)? updateBundle,
    required TResult orElse(),
  }) {
    if (addBundle != null) {
      return addBundle(this);
    }
    return orElse();
  }
}

abstract class _AddBundle implements AddBundleToCartEvent {
  const factory _AddBundle(final int id, final Map<dynamic, dynamic> data,
      final String cartUrl, final int quantity) = _$_AddBundle;

  int get id;
  @override
  Map<dynamic, dynamic> get data;
  String get cartUrl;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_AddBundleCopyWith<_$_AddBundle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateBundleCopyWith<$Res>
    implements $AddBundleToCartEventCopyWith<$Res> {
  factory _$$_UpdateBundleCopyWith(
          _$_UpdateBundle value, $Res Function(_$_UpdateBundle) then) =
      __$$_UpdateBundleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, Map<dynamic, dynamic> data, int quantity});
}

/// @nodoc
class __$$_UpdateBundleCopyWithImpl<$Res>
    extends _$AddBundleToCartEventCopyWithImpl<$Res, _$_UpdateBundle>
    implements _$$_UpdateBundleCopyWith<$Res> {
  __$$_UpdateBundleCopyWithImpl(
      _$_UpdateBundle _value, $Res Function(_$_UpdateBundle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? data = null,
    Object? quantity = null,
  }) {
    return _then(_$_UpdateBundle(
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UpdateBundle with DiagnosticableTreeMixin implements _UpdateBundle {
  const _$_UpdateBundle(
      this.key, final Map<dynamic, dynamic> data, this.quantity)
      : _data = data;

  @override
  final String key;
  final Map<dynamic, dynamic> _data;
  @override
  Map<dynamic, dynamic> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final int quantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddBundleToCartEvent.updateBundle(key: $key, data: $data, quantity: $quantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddBundleToCartEvent.updateBundle'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('quantity', quantity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateBundle &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, key, const DeepCollectionEquality().hash(_data), quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateBundleCopyWith<_$_UpdateBundle> get copyWith =>
      __$$_UpdateBundleCopyWithImpl<_$_UpdateBundle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id, Map<dynamic, dynamic> data, String cartUrl, int quantity)
        addBundle,
    required TResult Function(
            String key, Map<dynamic, dynamic> data, int quantity)
        updateBundle,
  }) {
    return updateBundle(key, data, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id, Map<dynamic, dynamic> data, String cartUrl, int quantity)?
        addBundle,
    TResult? Function(String key, Map<dynamic, dynamic> data, int quantity)?
        updateBundle,
  }) {
    return updateBundle?.call(key, data, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id, Map<dynamic, dynamic> data, String cartUrl, int quantity)?
        addBundle,
    TResult Function(String key, Map<dynamic, dynamic> data, int quantity)?
        updateBundle,
    required TResult orElse(),
  }) {
    if (updateBundle != null) {
      return updateBundle(key, data, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddBundle value) addBundle,
    required TResult Function(_UpdateBundle value) updateBundle,
  }) {
    return updateBundle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddBundle value)? addBundle,
    TResult? Function(_UpdateBundle value)? updateBundle,
  }) {
    return updateBundle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddBundle value)? addBundle,
    TResult Function(_UpdateBundle value)? updateBundle,
    required TResult orElse(),
  }) {
    if (updateBundle != null) {
      return updateBundle(this);
    }
    return orElse();
  }
}

abstract class _UpdateBundle implements AddBundleToCartEvent {
  const factory _UpdateBundle(final String key,
      final Map<dynamic, dynamic> data, final int quantity) = _$_UpdateBundle;

  String get key;
  @override
  Map<dynamic, dynamic> get data;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateBundleCopyWith<_$_UpdateBundle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddBundleToCartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() addedProduct,
    required TResult Function(CartResponse cart) updatedProduct,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? addedProduct,
    TResult? Function(CartResponse cart)? updatedProduct,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? addedProduct,
    TResult Function(CartResponse cart)? updatedProduct,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddedProduct value) addedProduct,
    required TResult Function(_UpdatedProduct value) updatedProduct,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddedProduct value)? addedProduct,
    TResult? Function(_UpdatedProduct value)? updatedProduct,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddedProduct value)? addedProduct,
    TResult Function(_UpdatedProduct value)? updatedProduct,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddBundleToCartStateCopyWith<$Res> {
  factory $AddBundleToCartStateCopyWith(AddBundleToCartState value,
          $Res Function(AddBundleToCartState) then) =
      _$AddBundleToCartStateCopyWithImpl<$Res, AddBundleToCartState>;
}

/// @nodoc
class _$AddBundleToCartStateCopyWithImpl<$Res,
        $Val extends AddBundleToCartState>
    implements $AddBundleToCartStateCopyWith<$Res> {
  _$AddBundleToCartStateCopyWithImpl(this._value, this._then);

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
    extends _$AddBundleToCartStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddBundleToCartState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AddBundleToCartState.initial'));
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
    required TResult Function() loading,
    required TResult Function() addedProduct,
    required TResult Function(CartResponse cart) updatedProduct,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? addedProduct,
    TResult? Function(CartResponse cart)? updatedProduct,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? addedProduct,
    TResult Function(CartResponse cart)? updatedProduct,
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
    required TResult Function(_AddedProduct value) addedProduct,
    required TResult Function(_UpdatedProduct value) updatedProduct,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddedProduct value)? addedProduct,
    TResult? Function(_UpdatedProduct value)? updatedProduct,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddedProduct value)? addedProduct,
    TResult Function(_UpdatedProduct value)? updatedProduct,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddBundleToCartState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$AddBundleToCartStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading with DiagnosticableTreeMixin implements _Loading {
  const _$_Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddBundleToCartState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AddBundleToCartState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() addedProduct,
    required TResult Function(CartResponse cart) updatedProduct,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? addedProduct,
    TResult? Function(CartResponse cart)? updatedProduct,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? addedProduct,
    TResult Function(CartResponse cart)? updatedProduct,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddedProduct value) addedProduct,
    required TResult Function(_UpdatedProduct value) updatedProduct,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddedProduct value)? addedProduct,
    TResult? Function(_UpdatedProduct value)? updatedProduct,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddedProduct value)? addedProduct,
    TResult Function(_UpdatedProduct value)? updatedProduct,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AddBundleToCartState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_AddedProductCopyWith<$Res> {
  factory _$$_AddedProductCopyWith(
          _$_AddedProduct value, $Res Function(_$_AddedProduct) then) =
      __$$_AddedProductCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddedProductCopyWithImpl<$Res>
    extends _$AddBundleToCartStateCopyWithImpl<$Res, _$_AddedProduct>
    implements _$$_AddedProductCopyWith<$Res> {
  __$$_AddedProductCopyWithImpl(
      _$_AddedProduct _value, $Res Function(_$_AddedProduct) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AddedProduct with DiagnosticableTreeMixin implements _AddedProduct {
  const _$_AddedProduct();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddBundleToCartState.addedProduct()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AddBundleToCartState.addedProduct'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddedProduct);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() addedProduct,
    required TResult Function(CartResponse cart) updatedProduct,
    required TResult Function() error,
  }) {
    return addedProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? addedProduct,
    TResult? Function(CartResponse cart)? updatedProduct,
    TResult? Function()? error,
  }) {
    return addedProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? addedProduct,
    TResult Function(CartResponse cart)? updatedProduct,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (addedProduct != null) {
      return addedProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddedProduct value) addedProduct,
    required TResult Function(_UpdatedProduct value) updatedProduct,
    required TResult Function(_Error value) error,
  }) {
    return addedProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddedProduct value)? addedProduct,
    TResult? Function(_UpdatedProduct value)? updatedProduct,
    TResult? Function(_Error value)? error,
  }) {
    return addedProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddedProduct value)? addedProduct,
    TResult Function(_UpdatedProduct value)? updatedProduct,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (addedProduct != null) {
      return addedProduct(this);
    }
    return orElse();
  }
}

abstract class _AddedProduct implements AddBundleToCartState {
  const factory _AddedProduct() = _$_AddedProduct;
}

/// @nodoc
abstract class _$$_UpdatedProductCopyWith<$Res> {
  factory _$$_UpdatedProductCopyWith(
          _$_UpdatedProduct value, $Res Function(_$_UpdatedProduct) then) =
      __$$_UpdatedProductCopyWithImpl<$Res>;
  @useResult
  $Res call({CartResponse cart});

  $CartResponseCopyWith<$Res> get cart;
}

/// @nodoc
class __$$_UpdatedProductCopyWithImpl<$Res>
    extends _$AddBundleToCartStateCopyWithImpl<$Res, _$_UpdatedProduct>
    implements _$$_UpdatedProductCopyWith<$Res> {
  __$$_UpdatedProductCopyWithImpl(
      _$_UpdatedProduct _value, $Res Function(_$_UpdatedProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
  }) {
    return _then(_$_UpdatedProduct(
      null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartResponseCopyWith<$Res> get cart {
    return $CartResponseCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value));
    });
  }
}

/// @nodoc

class _$_UpdatedProduct
    with DiagnosticableTreeMixin
    implements _UpdatedProduct {
  const _$_UpdatedProduct(this.cart);

  @override
  final CartResponse cart;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddBundleToCartState.updatedProduct(cart: $cart)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddBundleToCartState.updatedProduct'))
      ..add(DiagnosticsProperty('cart', cart));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatedProduct &&
            (identical(other.cart, cart) || other.cart == cart));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cart);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdatedProductCopyWith<_$_UpdatedProduct> get copyWith =>
      __$$_UpdatedProductCopyWithImpl<_$_UpdatedProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() addedProduct,
    required TResult Function(CartResponse cart) updatedProduct,
    required TResult Function() error,
  }) {
    return updatedProduct(cart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? addedProduct,
    TResult? Function(CartResponse cart)? updatedProduct,
    TResult? Function()? error,
  }) {
    return updatedProduct?.call(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? addedProduct,
    TResult Function(CartResponse cart)? updatedProduct,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (updatedProduct != null) {
      return updatedProduct(cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddedProduct value) addedProduct,
    required TResult Function(_UpdatedProduct value) updatedProduct,
    required TResult Function(_Error value) error,
  }) {
    return updatedProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddedProduct value)? addedProduct,
    TResult? Function(_UpdatedProduct value)? updatedProduct,
    TResult? Function(_Error value)? error,
  }) {
    return updatedProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddedProduct value)? addedProduct,
    TResult Function(_UpdatedProduct value)? updatedProduct,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (updatedProduct != null) {
      return updatedProduct(this);
    }
    return orElse();
  }
}

abstract class _UpdatedProduct implements AddBundleToCartState {
  const factory _UpdatedProduct(final CartResponse cart) = _$_UpdatedProduct;

  CartResponse get cart;
  @JsonKey(ignore: true)
  _$$_UpdatedProductCopyWith<_$_UpdatedProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$AddBundleToCartStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Error with DiagnosticableTreeMixin implements _Error {
  const _$_Error();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddBundleToCartState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AddBundleToCartState.error'));
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
    required TResult Function() loading,
    required TResult Function() addedProduct,
    required TResult Function(CartResponse cart) updatedProduct,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? addedProduct,
    TResult? Function(CartResponse cart)? updatedProduct,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? addedProduct,
    TResult Function(CartResponse cart)? updatedProduct,
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
    required TResult Function(_AddedProduct value) addedProduct,
    required TResult Function(_UpdatedProduct value) updatedProduct,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddedProduct value)? addedProduct,
    TResult? Function(_UpdatedProduct value)? updatedProduct,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddedProduct value)? addedProduct,
    TResult Function(_UpdatedProduct value)? updatedProduct,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AddBundleToCartState {
  const factory _Error() = _$_Error;
}
