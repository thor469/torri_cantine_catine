// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) fetch,
    required TResult Function() fetchAddress,
    required TResult Function(AddAddressRequest request, String id)
        updateAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? fetch,
    TResult? Function()? fetchAddress,
    TResult? Function(AddAddressRequest request, String id)? updateAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? fetch,
    TResult Function()? fetchAddress,
    TResult Function(AddAddressRequest request, String id)? updateAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchAddress value) fetchAddress,
    required TResult Function(_UpdateAddress value) updateAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchAddress value)? fetchAddress,
    TResult? Function(_UpdateAddress value)? updateAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchAddress value)? fetchAddress,
    TResult Function(_UpdateAddress value)? updateAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(
          AccountEvent value, $Res Function(AccountEvent) then) =
      _$AccountEventCopyWithImpl<$Res, AccountEvent>;
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res, $Val extends AccountEvent>
    implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_Fetch>
    implements _$$_FetchCopyWith<$Res> {
  __$$_FetchCopyWithImpl(_$_Fetch _value, $Res Function(_$_Fetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_Fetch(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Fetch with DiagnosticableTreeMixin implements _Fetch {
  const _$_Fetch(this.email);

  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountEvent.fetch(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountEvent.fetch'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fetch &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      __$$_FetchCopyWithImpl<_$_Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) fetch,
    required TResult Function() fetchAddress,
    required TResult Function(AddAddressRequest request, String id)
        updateAddress,
  }) {
    return fetch(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? fetch,
    TResult? Function()? fetchAddress,
    TResult? Function(AddAddressRequest request, String id)? updateAddress,
  }) {
    return fetch?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? fetch,
    TResult Function()? fetchAddress,
    TResult Function(AddAddressRequest request, String id)? updateAddress,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchAddress value) fetchAddress,
    required TResult Function(_UpdateAddress value) updateAddress,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchAddress value)? fetchAddress,
    TResult? Function(_UpdateAddress value)? updateAddress,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchAddress value)? fetchAddress,
    TResult Function(_UpdateAddress value)? updateAddress,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements AccountEvent {
  const factory _Fetch(final String email) = _$_Fetch;

  String get email;
  @JsonKey(ignore: true)
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchAddressCopyWith<$Res> {
  factory _$$_FetchAddressCopyWith(
          _$_FetchAddress value, $Res Function(_$_FetchAddress) then) =
      __$$_FetchAddressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchAddressCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_FetchAddress>
    implements _$$_FetchAddressCopyWith<$Res> {
  __$$_FetchAddressCopyWithImpl(
      _$_FetchAddress _value, $Res Function(_$_FetchAddress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchAddress with DiagnosticableTreeMixin implements _FetchAddress {
  const _$_FetchAddress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountEvent.fetchAddress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AccountEvent.fetchAddress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchAddress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) fetch,
    required TResult Function() fetchAddress,
    required TResult Function(AddAddressRequest request, String id)
        updateAddress,
  }) {
    return fetchAddress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? fetch,
    TResult? Function()? fetchAddress,
    TResult? Function(AddAddressRequest request, String id)? updateAddress,
  }) {
    return fetchAddress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? fetch,
    TResult Function()? fetchAddress,
    TResult Function(AddAddressRequest request, String id)? updateAddress,
    required TResult orElse(),
  }) {
    if (fetchAddress != null) {
      return fetchAddress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchAddress value) fetchAddress,
    required TResult Function(_UpdateAddress value) updateAddress,
  }) {
    return fetchAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchAddress value)? fetchAddress,
    TResult? Function(_UpdateAddress value)? updateAddress,
  }) {
    return fetchAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchAddress value)? fetchAddress,
    TResult Function(_UpdateAddress value)? updateAddress,
    required TResult orElse(),
  }) {
    if (fetchAddress != null) {
      return fetchAddress(this);
    }
    return orElse();
  }
}

abstract class _FetchAddress implements AccountEvent {
  const factory _FetchAddress() = _$_FetchAddress;
}

/// @nodoc
abstract class _$$_UpdateAddressCopyWith<$Res> {
  factory _$$_UpdateAddressCopyWith(
          _$_UpdateAddress value, $Res Function(_$_UpdateAddress) then) =
      __$$_UpdateAddressCopyWithImpl<$Res>;
  @useResult
  $Res call({AddAddressRequest request, String id});

  $AddAddressRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$_UpdateAddressCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_UpdateAddress>
    implements _$$_UpdateAddressCopyWith<$Res> {
  __$$_UpdateAddressCopyWithImpl(
      _$_UpdateAddress _value, $Res Function(_$_UpdateAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? id = null,
  }) {
    return _then(_$_UpdateAddress(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as AddAddressRequest,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddAddressRequestCopyWith<$Res> get request {
    return $AddAddressRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$_UpdateAddress with DiagnosticableTreeMixin implements _UpdateAddress {
  const _$_UpdateAddress(this.request, this.id);

  @override
  final AddAddressRequest request;
  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountEvent.updateAddress(request: $request, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountEvent.updateAddress'))
      ..add(DiagnosticsProperty('request', request))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAddress &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateAddressCopyWith<_$_UpdateAddress> get copyWith =>
      __$$_UpdateAddressCopyWithImpl<_$_UpdateAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) fetch,
    required TResult Function() fetchAddress,
    required TResult Function(AddAddressRequest request, String id)
        updateAddress,
  }) {
    return updateAddress(request, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? fetch,
    TResult? Function()? fetchAddress,
    TResult? Function(AddAddressRequest request, String id)? updateAddress,
  }) {
    return updateAddress?.call(request, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? fetch,
    TResult Function()? fetchAddress,
    TResult Function(AddAddressRequest request, String id)? updateAddress,
    required TResult orElse(),
  }) {
    if (updateAddress != null) {
      return updateAddress(request, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchAddress value) fetchAddress,
    required TResult Function(_UpdateAddress value) updateAddress,
  }) {
    return updateAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchAddress value)? fetchAddress,
    TResult? Function(_UpdateAddress value)? updateAddress,
  }) {
    return updateAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchAddress value)? fetchAddress,
    TResult Function(_UpdateAddress value)? updateAddress,
    required TResult orElse(),
  }) {
    if (updateAddress != null) {
      return updateAddress(this);
    }
    return orElse();
  }
}

abstract class _UpdateAddress implements AccountEvent {
  const factory _UpdateAddress(
      final AddAddressRequest request, final String id) = _$_UpdateAddress;

  AddAddressRequest get request;
  String get id;
  @JsonKey(ignore: true)
  _$$_UpdateAddressCopyWith<_$_UpdateAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() notLogged,
    required TResult Function(AccountResponse response) loaded,
    required TResult Function() error,
    required TResult Function(AddressResponse response) loadedAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? notLogged,
    TResult? Function(AccountResponse response)? loaded,
    TResult? Function()? error,
    TResult? Function(AddressResponse response)? loadedAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLogged,
    TResult Function(AccountResponse response)? loaded,
    TResult Function()? error,
    TResult Function(AddressResponse response)? loadedAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotLogged value) notLogged,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_LoadedAddress value) loadedAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotLogged value)? notLogged,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_LoadedAddress value)? loadedAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NotLogged value)? notLogged,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_LoadedAddress value)? loadedAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

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
    extends _$AccountStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AccountState.initial'));
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
    required TResult Function() notLogged,
    required TResult Function(AccountResponse response) loaded,
    required TResult Function() error,
    required TResult Function(AddressResponse response) loadedAddress,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? notLogged,
    TResult? Function(AccountResponse response)? loaded,
    TResult? Function()? error,
    TResult? Function(AddressResponse response)? loadedAddress,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLogged,
    TResult Function(AccountResponse response)? loaded,
    TResult Function()? error,
    TResult Function(AddressResponse response)? loadedAddress,
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
    required TResult Function(_NotLogged value) notLogged,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_LoadedAddress value) loadedAddress,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotLogged value)? notLogged,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_LoadedAddress value)? loadedAddress,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NotLogged value)? notLogged,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_LoadedAddress value)? loadedAddress,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AccountState {
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
    extends _$AccountStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading with DiagnosticableTreeMixin implements _Loading {
  const _$_Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AccountState.loading'));
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
    required TResult Function() notLogged,
    required TResult Function(AccountResponse response) loaded,
    required TResult Function() error,
    required TResult Function(AddressResponse response) loadedAddress,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? notLogged,
    TResult? Function(AccountResponse response)? loaded,
    TResult? Function()? error,
    TResult? Function(AddressResponse response)? loadedAddress,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLogged,
    TResult Function(AccountResponse response)? loaded,
    TResult Function()? error,
    TResult Function(AddressResponse response)? loadedAddress,
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
    required TResult Function(_NotLogged value) notLogged,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_LoadedAddress value) loadedAddress,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotLogged value)? notLogged,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_LoadedAddress value)? loadedAddress,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NotLogged value)? notLogged,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_LoadedAddress value)? loadedAddress,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AccountState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_NotLoggedCopyWith<$Res> {
  factory _$$_NotLoggedCopyWith(
          _$_NotLogged value, $Res Function(_$_NotLogged) then) =
      __$$_NotLoggedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NotLoggedCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$_NotLogged>
    implements _$$_NotLoggedCopyWith<$Res> {
  __$$_NotLoggedCopyWithImpl(
      _$_NotLogged _value, $Res Function(_$_NotLogged) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NotLogged with DiagnosticableTreeMixin implements _NotLogged {
  const _$_NotLogged();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountState.notLogged()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AccountState.notLogged'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NotLogged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() notLogged,
    required TResult Function(AccountResponse response) loaded,
    required TResult Function() error,
    required TResult Function(AddressResponse response) loadedAddress,
  }) {
    return notLogged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? notLogged,
    TResult? Function(AccountResponse response)? loaded,
    TResult? Function()? error,
    TResult? Function(AddressResponse response)? loadedAddress,
  }) {
    return notLogged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLogged,
    TResult Function(AccountResponse response)? loaded,
    TResult Function()? error,
    TResult Function(AddressResponse response)? loadedAddress,
    required TResult orElse(),
  }) {
    if (notLogged != null) {
      return notLogged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotLogged value) notLogged,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_LoadedAddress value) loadedAddress,
  }) {
    return notLogged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotLogged value)? notLogged,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_LoadedAddress value)? loadedAddress,
  }) {
    return notLogged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NotLogged value)? notLogged,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_LoadedAddress value)? loadedAddress,
    required TResult orElse(),
  }) {
    if (notLogged != null) {
      return notLogged(this);
    }
    return orElse();
  }
}

abstract class _NotLogged implements AccountState {
  const factory _NotLogged() = _$_NotLogged;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountResponse response});

  $AccountResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$_Loaded(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as AccountResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountResponseCopyWith<$Res> get response {
    return $AccountResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$_Loaded with DiagnosticableTreeMixin implements _Loaded {
  const _$_Loaded(this.response);

  @override
  final AccountResponse response;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountState.loaded(response: $response)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountState.loaded'))
      ..add(DiagnosticsProperty('response', response));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() notLogged,
    required TResult Function(AccountResponse response) loaded,
    required TResult Function() error,
    required TResult Function(AddressResponse response) loadedAddress,
  }) {
    return loaded(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? notLogged,
    TResult? Function(AccountResponse response)? loaded,
    TResult? Function()? error,
    TResult? Function(AddressResponse response)? loadedAddress,
  }) {
    return loaded?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLogged,
    TResult Function(AccountResponse response)? loaded,
    TResult Function()? error,
    TResult Function(AddressResponse response)? loadedAddress,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotLogged value) notLogged,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_LoadedAddress value) loadedAddress,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotLogged value)? notLogged,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_LoadedAddress value)? loadedAddress,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NotLogged value)? notLogged,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_LoadedAddress value)? loadedAddress,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements AccountState {
  const factory _Loaded(final AccountResponse response) = _$_Loaded;

  AccountResponse get response;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Error with DiagnosticableTreeMixin implements _Error {
  const _$_Error();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AccountState.error'));
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
    required TResult Function() notLogged,
    required TResult Function(AccountResponse response) loaded,
    required TResult Function() error,
    required TResult Function(AddressResponse response) loadedAddress,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? notLogged,
    TResult? Function(AccountResponse response)? loaded,
    TResult? Function()? error,
    TResult? Function(AddressResponse response)? loadedAddress,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLogged,
    TResult Function(AccountResponse response)? loaded,
    TResult Function()? error,
    TResult Function(AddressResponse response)? loadedAddress,
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
    required TResult Function(_NotLogged value) notLogged,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_LoadedAddress value) loadedAddress,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotLogged value)? notLogged,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_LoadedAddress value)? loadedAddress,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NotLogged value)? notLogged,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_LoadedAddress value)? loadedAddress,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AccountState {
  const factory _Error() = _$_Error;
}

/// @nodoc
abstract class _$$_LoadedAddressCopyWith<$Res> {
  factory _$$_LoadedAddressCopyWith(
          _$_LoadedAddress value, $Res Function(_$_LoadedAddress) then) =
      __$$_LoadedAddressCopyWithImpl<$Res>;
  @useResult
  $Res call({AddressResponse response});

  $AddressResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$_LoadedAddressCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$_LoadedAddress>
    implements _$$_LoadedAddressCopyWith<$Res> {
  __$$_LoadedAddressCopyWithImpl(
      _$_LoadedAddress _value, $Res Function(_$_LoadedAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$_LoadedAddress(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as AddressResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressResponseCopyWith<$Res> get response {
    return $AddressResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$_LoadedAddress with DiagnosticableTreeMixin implements _LoadedAddress {
  const _$_LoadedAddress(this.response);

  @override
  final AddressResponse response;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountState.loadedAddress(response: $response)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountState.loadedAddress'))
      ..add(DiagnosticsProperty('response', response));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedAddress &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedAddressCopyWith<_$_LoadedAddress> get copyWith =>
      __$$_LoadedAddressCopyWithImpl<_$_LoadedAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() notLogged,
    required TResult Function(AccountResponse response) loaded,
    required TResult Function() error,
    required TResult Function(AddressResponse response) loadedAddress,
  }) {
    return loadedAddress(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? notLogged,
    TResult? Function(AccountResponse response)? loaded,
    TResult? Function()? error,
    TResult? Function(AddressResponse response)? loadedAddress,
  }) {
    return loadedAddress?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLogged,
    TResult Function(AccountResponse response)? loaded,
    TResult Function()? error,
    TResult Function(AddressResponse response)? loadedAddress,
    required TResult orElse(),
  }) {
    if (loadedAddress != null) {
      return loadedAddress(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotLogged value) notLogged,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_LoadedAddress value) loadedAddress,
  }) {
    return loadedAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotLogged value)? notLogged,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_LoadedAddress value)? loadedAddress,
  }) {
    return loadedAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NotLogged value)? notLogged,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_LoadedAddress value)? loadedAddress,
    required TResult orElse(),
  }) {
    if (loadedAddress != null) {
      return loadedAddress(this);
    }
    return orElse();
  }
}

abstract class _LoadedAddress implements AccountState {
  const factory _LoadedAddress(final AddressResponse response) =
      _$_LoadedAddress;

  AddressResponse get response;
  @JsonKey(ignore: true)
  _$$_LoadedAddressCopyWith<_$_LoadedAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
