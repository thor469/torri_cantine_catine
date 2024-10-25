// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_product_to_cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddProductToCartEvent {
  int get quantity => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, int quantity) addProduct,
    required TResult Function(String key, int quantity) updateProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, int quantity)? addProduct,
    TResult? Function(String key, int quantity)? updateProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, int quantity)? addProduct,
    TResult Function(String key, int quantity)? updateProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_UpdateProduct value) updateProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_UpdateProduct value)? updateProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_UpdateProduct value)? updateProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddProductToCartEventCopyWith<AddProductToCartEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddProductToCartEventCopyWith<$Res> {
  factory $AddProductToCartEventCopyWith(AddProductToCartEvent value,
          $Res Function(AddProductToCartEvent) then) =
      _$AddProductToCartEventCopyWithImpl<$Res, AddProductToCartEvent>;
  @useResult
  $Res call({int quantity});
}

/// @nodoc
class _$AddProductToCartEventCopyWithImpl<$Res,
        $Val extends AddProductToCartEvent>
    implements $AddProductToCartEventCopyWith<$Res> {
  _$AddProductToCartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddProductCopyWith<$Res>
    implements $AddProductToCartEventCopyWith<$Res> {
  factory _$$_AddProductCopyWith(
          _$_AddProduct value, $Res Function(_$_AddProduct) then) =
      __$$_AddProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int quantity});
}

/// @nodoc
class __$$_AddProductCopyWithImpl<$Res>
    extends _$AddProductToCartEventCopyWithImpl<$Res, _$_AddProduct>
    implements _$$_AddProductCopyWith<$Res> {
  __$$_AddProductCopyWithImpl(
      _$_AddProduct _value, $Res Function(_$_AddProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
  }) {
    return _then(_$_AddProduct(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AddProduct with DiagnosticableTreeMixin implements _AddProduct {
  const _$_AddProduct(this.id, this.quantity);

  @override
  final int id;
  @override
  final int quantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddProductToCartEvent.addProduct(id: $id, quantity: $quantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddProductToCartEvent.addProduct'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('quantity', quantity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddProduct &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddProductCopyWith<_$_AddProduct> get copyWith =>
      __$$_AddProductCopyWithImpl<_$_AddProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, int quantity) addProduct,
    required TResult Function(String key, int quantity) updateProduct,
  }) {
    return addProduct(id, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, int quantity)? addProduct,
    TResult? Function(String key, int quantity)? updateProduct,
  }) {
    return addProduct?.call(id, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, int quantity)? addProduct,
    TResult Function(String key, int quantity)? updateProduct,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(id, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_UpdateProduct value) updateProduct,
  }) {
    return addProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_UpdateProduct value)? updateProduct,
  }) {
    return addProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_UpdateProduct value)? updateProduct,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(this);
    }
    return orElse();
  }
}

abstract class _AddProduct implements AddProductToCartEvent {
  const factory _AddProduct(final int id, final int quantity) = _$_AddProduct;

  int get id;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_AddProductCopyWith<_$_AddProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateProductCopyWith<$Res>
    implements $AddProductToCartEventCopyWith<$Res> {
  factory _$$_UpdateProductCopyWith(
          _$_UpdateProduct value, $Res Function(_$_UpdateProduct) then) =
      __$$_UpdateProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, int quantity});
}

/// @nodoc
class __$$_UpdateProductCopyWithImpl<$Res>
    extends _$AddProductToCartEventCopyWithImpl<$Res, _$_UpdateProduct>
    implements _$$_UpdateProductCopyWith<$Res> {
  __$$_UpdateProductCopyWithImpl(
      _$_UpdateProduct _value, $Res Function(_$_UpdateProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? quantity = null,
  }) {
    return _then(_$_UpdateProduct(
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UpdateProduct with DiagnosticableTreeMixin implements _UpdateProduct {
  const _$_UpdateProduct(this.key, this.quantity);

  @override
  final String key;
  @override
  final int quantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddProductToCartEvent.updateProduct(key: $key, quantity: $quantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddProductToCartEvent.updateProduct'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('quantity', quantity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateProduct &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateProductCopyWith<_$_UpdateProduct> get copyWith =>
      __$$_UpdateProductCopyWithImpl<_$_UpdateProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, int quantity) addProduct,
    required TResult Function(String key, int quantity) updateProduct,
  }) {
    return updateProduct(key, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, int quantity)? addProduct,
    TResult? Function(String key, int quantity)? updateProduct,
  }) {
    return updateProduct?.call(key, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, int quantity)? addProduct,
    TResult Function(String key, int quantity)? updateProduct,
    required TResult orElse(),
  }) {
    if (updateProduct != null) {
      return updateProduct(key, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_UpdateProduct value) updateProduct,
  }) {
    return updateProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_UpdateProduct value)? updateProduct,
  }) {
    return updateProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_UpdateProduct value)? updateProduct,
    required TResult orElse(),
  }) {
    if (updateProduct != null) {
      return updateProduct(this);
    }
    return orElse();
  }
}

abstract class _UpdateProduct implements AddProductToCartEvent {
  const factory _UpdateProduct(final String key, final int quantity) =
      _$_UpdateProduct;

  String get key;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateProductCopyWith<_$_UpdateProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddProductToCartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CartResponse cart) addedProduct,
    required TResult Function(CartResponse cart) updatedProduct,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CartResponse cart)? addedProduct,
    TResult? Function(CartResponse cart)? updatedProduct,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CartResponse cart)? addedProduct,
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
abstract class $AddProductToCartStateCopyWith<$Res> {
  factory $AddProductToCartStateCopyWith(AddProductToCartState value,
          $Res Function(AddProductToCartState) then) =
      _$AddProductToCartStateCopyWithImpl<$Res, AddProductToCartState>;
}

/// @nodoc
class _$AddProductToCartStateCopyWithImpl<$Res,
        $Val extends AddProductToCartState>
    implements $AddProductToCartStateCopyWith<$Res> {
  _$AddProductToCartStateCopyWithImpl(this._value, this._then);

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
    extends _$AddProductToCartStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddProductToCartState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AddProductToCartState.initial'));
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
    required TResult Function(CartResponse cart) addedProduct,
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
    TResult? Function(CartResponse cart)? addedProduct,
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
    TResult Function(CartResponse cart)? addedProduct,
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

abstract class _Initial implements AddProductToCartState {
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
    extends _$AddProductToCartStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading with DiagnosticableTreeMixin implements _Loading {
  const _$_Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddProductToCartState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AddProductToCartState.loading'));
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
    required TResult Function(CartResponse cart) addedProduct,
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
    TResult? Function(CartResponse cart)? addedProduct,
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
    TResult Function(CartResponse cart)? addedProduct,
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

abstract class _Loading implements AddProductToCartState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_AddedProductCopyWith<$Res> {
  factory _$$_AddedProductCopyWith(
          _$_AddedProduct value, $Res Function(_$_AddedProduct) then) =
      __$$_AddedProductCopyWithImpl<$Res>;
  @useResult
  $Res call({CartResponse cart});

  $CartResponseCopyWith<$Res> get cart;
}

/// @nodoc
class __$$_AddedProductCopyWithImpl<$Res>
    extends _$AddProductToCartStateCopyWithImpl<$Res, _$_AddedProduct>
    implements _$$_AddedProductCopyWith<$Res> {
  __$$_AddedProductCopyWithImpl(
      _$_AddedProduct _value, $Res Function(_$_AddedProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
  }) {
    return _then(_$_AddedProduct(
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

class _$_AddedProduct with DiagnosticableTreeMixin implements _AddedProduct {
  const _$_AddedProduct(this.cart);

  @override
  final CartResponse cart;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddProductToCartState.addedProduct(cart: $cart)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddProductToCartState.addedProduct'))
      ..add(DiagnosticsProperty('cart', cart));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddedProduct &&
            (identical(other.cart, cart) || other.cart == cart));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cart);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddedProductCopyWith<_$_AddedProduct> get copyWith =>
      __$$_AddedProductCopyWithImpl<_$_AddedProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CartResponse cart) addedProduct,
    required TResult Function(CartResponse cart) updatedProduct,
    required TResult Function() error,
  }) {
    return addedProduct(cart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CartResponse cart)? addedProduct,
    TResult? Function(CartResponse cart)? updatedProduct,
    TResult? Function()? error,
  }) {
    return addedProduct?.call(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CartResponse cart)? addedProduct,
    TResult Function(CartResponse cart)? updatedProduct,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (addedProduct != null) {
      return addedProduct(cart);
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

abstract class _AddedProduct implements AddProductToCartState {
  const factory _AddedProduct(final CartResponse cart) = _$_AddedProduct;

  CartResponse get cart;
  @JsonKey(ignore: true)
  _$$_AddedProductCopyWith<_$_AddedProduct> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$AddProductToCartStateCopyWithImpl<$Res, _$_UpdatedProduct>
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
    return 'AddProductToCartState.updatedProduct(cart: $cart)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddProductToCartState.updatedProduct'))
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
    required TResult Function(CartResponse cart) addedProduct,
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
    TResult? Function(CartResponse cart)? addedProduct,
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
    TResult Function(CartResponse cart)? addedProduct,
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

abstract class _UpdatedProduct implements AddProductToCartState {
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
    extends _$AddProductToCartStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Error with DiagnosticableTreeMixin implements _Error {
  const _$_Error();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddProductToCartState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AddProductToCartState.error'));
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
    required TResult Function(CartResponse cart) addedProduct,
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
    TResult? Function(CartResponse cart)? addedProduct,
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
    TResult Function(CartResponse cart)? addedProduct,
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

abstract class _Error implements AddProductToCartState {
  const factory _Error() = _$_Error;
}
