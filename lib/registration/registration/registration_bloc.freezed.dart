// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegistrationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String firstName, String lastName,
            String username, String password)
        fetch,
    required TResult Function() registerWithGoogle,
    required TResult Function() registerWithFacebook,
    required TResult Function() registerWithApple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String firstName, String lastName,
            String username, String password)?
        fetch,
    TResult? Function()? registerWithGoogle,
    TResult? Function()? registerWithFacebook,
    TResult? Function()? registerWithApple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String firstName, String lastName,
            String username, String password)?
        fetch,
    TResult Function()? registerWithGoogle,
    TResult Function()? registerWithFacebook,
    TResult Function()? registerWithApple,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_RegisterWithGoogle value) registerWithGoogle,
    required TResult Function(_RegisterWithFacebook value) registerWithFacebook,
    required TResult Function(_RegisterWithApple value) registerWithApple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_RegisterWithGoogle value)? registerWithGoogle,
    TResult? Function(_RegisterWithFacebook value)? registerWithFacebook,
    TResult? Function(_RegisterWithApple value)? registerWithApple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_RegisterWithGoogle value)? registerWithGoogle,
    TResult Function(_RegisterWithFacebook value)? registerWithFacebook,
    TResult Function(_RegisterWithApple value)? registerWithApple,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationEventCopyWith<$Res> {
  factory $RegistrationEventCopyWith(
          RegistrationEvent value, $Res Function(RegistrationEvent) then) =
      _$RegistrationEventCopyWithImpl<$Res, RegistrationEvent>;
}

/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res, $Val extends RegistrationEvent>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._value, this._then);

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
  $Res call(
      {String email,
      String firstName,
      String lastName,
      String username,
      String password});
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$_Fetch>
    implements _$$_FetchCopyWith<$Res> {
  __$$_FetchCopyWithImpl(_$_Fetch _value, $Res Function(_$_Fetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$_Fetch(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Fetch implements _Fetch {
  const _$_Fetch(
      {required this.email,
      required this.firstName,
      required this.lastName,
      required this.username,
      required this.password});

  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'RegistrationEvent.fetch(email: $email, firstName: $firstName, lastName: $lastName, username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fetch &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, firstName, lastName, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      __$$_FetchCopyWithImpl<_$_Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String firstName, String lastName,
            String username, String password)
        fetch,
    required TResult Function() registerWithGoogle,
    required TResult Function() registerWithFacebook,
    required TResult Function() registerWithApple,
  }) {
    return fetch(email, firstName, lastName, username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String firstName, String lastName,
            String username, String password)?
        fetch,
    TResult? Function()? registerWithGoogle,
    TResult? Function()? registerWithFacebook,
    TResult? Function()? registerWithApple,
  }) {
    return fetch?.call(email, firstName, lastName, username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String firstName, String lastName,
            String username, String password)?
        fetch,
    TResult Function()? registerWithGoogle,
    TResult Function()? registerWithFacebook,
    TResult Function()? registerWithApple,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(email, firstName, lastName, username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_RegisterWithGoogle value) registerWithGoogle,
    required TResult Function(_RegisterWithFacebook value) registerWithFacebook,
    required TResult Function(_RegisterWithApple value) registerWithApple,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_RegisterWithGoogle value)? registerWithGoogle,
    TResult? Function(_RegisterWithFacebook value)? registerWithFacebook,
    TResult? Function(_RegisterWithApple value)? registerWithApple,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_RegisterWithGoogle value)? registerWithGoogle,
    TResult Function(_RegisterWithFacebook value)? registerWithFacebook,
    TResult Function(_RegisterWithApple value)? registerWithApple,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements RegistrationEvent {
  const factory _Fetch(
      {required final String email,
      required final String firstName,
      required final String lastName,
      required final String username,
      required final String password}) = _$_Fetch;

  String get email;
  String get firstName;
  String get lastName;
  String get username;
  String get password;
  @JsonKey(ignore: true)
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegisterWithGoogleCopyWith<$Res> {
  factory _$$_RegisterWithGoogleCopyWith(_$_RegisterWithGoogle value,
          $Res Function(_$_RegisterWithGoogle) then) =
      __$$_RegisterWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegisterWithGoogleCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$_RegisterWithGoogle>
    implements _$$_RegisterWithGoogleCopyWith<$Res> {
  __$$_RegisterWithGoogleCopyWithImpl(
      _$_RegisterWithGoogle _value, $Res Function(_$_RegisterWithGoogle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RegisterWithGoogle implements _RegisterWithGoogle {
  const _$_RegisterWithGoogle();

  @override
  String toString() {
    return 'RegistrationEvent.registerWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RegisterWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String firstName, String lastName,
            String username, String password)
        fetch,
    required TResult Function() registerWithGoogle,
    required TResult Function() registerWithFacebook,
    required TResult Function() registerWithApple,
  }) {
    return registerWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String firstName, String lastName,
            String username, String password)?
        fetch,
    TResult? Function()? registerWithGoogle,
    TResult? Function()? registerWithFacebook,
    TResult? Function()? registerWithApple,
  }) {
    return registerWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String firstName, String lastName,
            String username, String password)?
        fetch,
    TResult Function()? registerWithGoogle,
    TResult Function()? registerWithFacebook,
    TResult Function()? registerWithApple,
    required TResult orElse(),
  }) {
    if (registerWithGoogle != null) {
      return registerWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_RegisterWithGoogle value) registerWithGoogle,
    required TResult Function(_RegisterWithFacebook value) registerWithFacebook,
    required TResult Function(_RegisterWithApple value) registerWithApple,
  }) {
    return registerWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_RegisterWithGoogle value)? registerWithGoogle,
    TResult? Function(_RegisterWithFacebook value)? registerWithFacebook,
    TResult? Function(_RegisterWithApple value)? registerWithApple,
  }) {
    return registerWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_RegisterWithGoogle value)? registerWithGoogle,
    TResult Function(_RegisterWithFacebook value)? registerWithFacebook,
    TResult Function(_RegisterWithApple value)? registerWithApple,
    required TResult orElse(),
  }) {
    if (registerWithGoogle != null) {
      return registerWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithGoogle implements RegistrationEvent {
  const factory _RegisterWithGoogle() = _$_RegisterWithGoogle;
}

/// @nodoc
abstract class _$$_RegisterWithFacebookCopyWith<$Res> {
  factory _$$_RegisterWithFacebookCopyWith(_$_RegisterWithFacebook value,
          $Res Function(_$_RegisterWithFacebook) then) =
      __$$_RegisterWithFacebookCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegisterWithFacebookCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$_RegisterWithFacebook>
    implements _$$_RegisterWithFacebookCopyWith<$Res> {
  __$$_RegisterWithFacebookCopyWithImpl(_$_RegisterWithFacebook _value,
      $Res Function(_$_RegisterWithFacebook) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RegisterWithFacebook implements _RegisterWithFacebook {
  const _$_RegisterWithFacebook();

  @override
  String toString() {
    return 'RegistrationEvent.registerWithFacebook()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RegisterWithFacebook);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String firstName, String lastName,
            String username, String password)
        fetch,
    required TResult Function() registerWithGoogle,
    required TResult Function() registerWithFacebook,
    required TResult Function() registerWithApple,
  }) {
    return registerWithFacebook();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String firstName, String lastName,
            String username, String password)?
        fetch,
    TResult? Function()? registerWithGoogle,
    TResult? Function()? registerWithFacebook,
    TResult? Function()? registerWithApple,
  }) {
    return registerWithFacebook?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String firstName, String lastName,
            String username, String password)?
        fetch,
    TResult Function()? registerWithGoogle,
    TResult Function()? registerWithFacebook,
    TResult Function()? registerWithApple,
    required TResult orElse(),
  }) {
    if (registerWithFacebook != null) {
      return registerWithFacebook();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_RegisterWithGoogle value) registerWithGoogle,
    required TResult Function(_RegisterWithFacebook value) registerWithFacebook,
    required TResult Function(_RegisterWithApple value) registerWithApple,
  }) {
    return registerWithFacebook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_RegisterWithGoogle value)? registerWithGoogle,
    TResult? Function(_RegisterWithFacebook value)? registerWithFacebook,
    TResult? Function(_RegisterWithApple value)? registerWithApple,
  }) {
    return registerWithFacebook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_RegisterWithGoogle value)? registerWithGoogle,
    TResult Function(_RegisterWithFacebook value)? registerWithFacebook,
    TResult Function(_RegisterWithApple value)? registerWithApple,
    required TResult orElse(),
  }) {
    if (registerWithFacebook != null) {
      return registerWithFacebook(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithFacebook implements RegistrationEvent {
  const factory _RegisterWithFacebook() = _$_RegisterWithFacebook;
}

/// @nodoc
abstract class _$$_RegisterWithAppleCopyWith<$Res> {
  factory _$$_RegisterWithAppleCopyWith(_$_RegisterWithApple value,
          $Res Function(_$_RegisterWithApple) then) =
      __$$_RegisterWithAppleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegisterWithAppleCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$_RegisterWithApple>
    implements _$$_RegisterWithAppleCopyWith<$Res> {
  __$$_RegisterWithAppleCopyWithImpl(
      _$_RegisterWithApple _value, $Res Function(_$_RegisterWithApple) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RegisterWithApple implements _RegisterWithApple {
  const _$_RegisterWithApple();

  @override
  String toString() {
    return 'RegistrationEvent.registerWithApple()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RegisterWithApple);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String firstName, String lastName,
            String username, String password)
        fetch,
    required TResult Function() registerWithGoogle,
    required TResult Function() registerWithFacebook,
    required TResult Function() registerWithApple,
  }) {
    return registerWithApple();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String firstName, String lastName,
            String username, String password)?
        fetch,
    TResult? Function()? registerWithGoogle,
    TResult? Function()? registerWithFacebook,
    TResult? Function()? registerWithApple,
  }) {
    return registerWithApple?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String firstName, String lastName,
            String username, String password)?
        fetch,
    TResult Function()? registerWithGoogle,
    TResult Function()? registerWithFacebook,
    TResult Function()? registerWithApple,
    required TResult orElse(),
  }) {
    if (registerWithApple != null) {
      return registerWithApple();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_RegisterWithGoogle value) registerWithGoogle,
    required TResult Function(_RegisterWithFacebook value) registerWithFacebook,
    required TResult Function(_RegisterWithApple value) registerWithApple,
  }) {
    return registerWithApple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_RegisterWithGoogle value)? registerWithGoogle,
    TResult? Function(_RegisterWithFacebook value)? registerWithFacebook,
    TResult? Function(_RegisterWithApple value)? registerWithApple,
  }) {
    return registerWithApple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_RegisterWithGoogle value)? registerWithGoogle,
    TResult Function(_RegisterWithFacebook value)? registerWithFacebook,
    TResult Function(_RegisterWithApple value)? registerWithApple,
    required TResult orElse(),
  }) {
    if (registerWithApple != null) {
      return registerWithApple(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithApple implements RegistrationEvent {
  const factory _RegisterWithApple() = _$_RegisterWithApple;
}

/// @nodoc
mixin _$RegistrationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RegistrationResponse response) loaded,
    required TResult Function(
            RegistrationResponse response, String username, String password)
        loadedWithGoogle,
    required TResult Function(String string, String code) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegistrationResponse response)? loaded,
    TResult? Function(
            RegistrationResponse response, String username, String password)?
        loadedWithGoogle,
    TResult? Function(String string, String code)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegistrationResponse response)? loaded,
    TResult Function(
            RegistrationResponse response, String username, String password)?
        loadedWithGoogle,
    TResult Function(String string, String code)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedWithGoogle value) loadedWithGoogle,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedWithGoogle value)? loadedWithGoogle,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedWithGoogle value)? loadedWithGoogle,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res, RegistrationState>;
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res, $Val extends RegistrationState>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

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
    extends _$RegistrationStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'RegistrationState.initial()';
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
    required TResult Function(RegistrationResponse response) loaded,
    required TResult Function(
            RegistrationResponse response, String username, String password)
        loadedWithGoogle,
    required TResult Function(String string, String code) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegistrationResponse response)? loaded,
    TResult? Function(
            RegistrationResponse response, String username, String password)?
        loadedWithGoogle,
    TResult? Function(String string, String code)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegistrationResponse response)? loaded,
    TResult Function(
            RegistrationResponse response, String username, String password)?
        loadedWithGoogle,
    TResult Function(String string, String code)? error,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedWithGoogle value) loadedWithGoogle,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedWithGoogle value)? loadedWithGoogle,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedWithGoogle value)? loadedWithGoogle,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RegistrationState {
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
    extends _$RegistrationStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'RegistrationState.loading()';
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
    required TResult Function(RegistrationResponse response) loaded,
    required TResult Function(
            RegistrationResponse response, String username, String password)
        loadedWithGoogle,
    required TResult Function(String string, String code) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegistrationResponse response)? loaded,
    TResult? Function(
            RegistrationResponse response, String username, String password)?
        loadedWithGoogle,
    TResult? Function(String string, String code)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegistrationResponse response)? loaded,
    TResult Function(
            RegistrationResponse response, String username, String password)?
        loadedWithGoogle,
    TResult Function(String string, String code)? error,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedWithGoogle value) loadedWithGoogle,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedWithGoogle value)? loadedWithGoogle,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedWithGoogle value)? loadedWithGoogle,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements RegistrationState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({RegistrationResponse response});

  $RegistrationResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$_Loaded>
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
              as RegistrationResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RegistrationResponseCopyWith<$Res> get response {
    return $RegistrationResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.response);

  @override
  final RegistrationResponse response;

  @override
  String toString() {
    return 'RegistrationState.loaded(response: $response)';
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
    required TResult Function(RegistrationResponse response) loaded,
    required TResult Function(
            RegistrationResponse response, String username, String password)
        loadedWithGoogle,
    required TResult Function(String string, String code) error,
  }) {
    return loaded(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegistrationResponse response)? loaded,
    TResult? Function(
            RegistrationResponse response, String username, String password)?
        loadedWithGoogle,
    TResult? Function(String string, String code)? error,
  }) {
    return loaded?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegistrationResponse response)? loaded,
    TResult Function(
            RegistrationResponse response, String username, String password)?
        loadedWithGoogle,
    TResult Function(String string, String code)? error,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedWithGoogle value) loadedWithGoogle,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedWithGoogle value)? loadedWithGoogle,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedWithGoogle value)? loadedWithGoogle,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements RegistrationState {
  const factory _Loaded(final RegistrationResponse response) = _$_Loaded;

  RegistrationResponse get response;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedWithGoogleCopyWith<$Res> {
  factory _$$_LoadedWithGoogleCopyWith(
          _$_LoadedWithGoogle value, $Res Function(_$_LoadedWithGoogle) then) =
      __$$_LoadedWithGoogleCopyWithImpl<$Res>;
  @useResult
  $Res call({RegistrationResponse response, String username, String password});

  $RegistrationResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$_LoadedWithGoogleCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$_LoadedWithGoogle>
    implements _$$_LoadedWithGoogleCopyWith<$Res> {
  __$$_LoadedWithGoogleCopyWithImpl(
      _$_LoadedWithGoogle _value, $Res Function(_$_LoadedWithGoogle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$_LoadedWithGoogle(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as RegistrationResponse,
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RegistrationResponseCopyWith<$Res> get response {
    return $RegistrationResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$_LoadedWithGoogle implements _LoadedWithGoogle {
  const _$_LoadedWithGoogle(this.response, this.username, this.password);

  @override
  final RegistrationResponse response;
  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'RegistrationState.loadedWithGoogle(response: $response, username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedWithGoogle &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedWithGoogleCopyWith<_$_LoadedWithGoogle> get copyWith =>
      __$$_LoadedWithGoogleCopyWithImpl<_$_LoadedWithGoogle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RegistrationResponse response) loaded,
    required TResult Function(
            RegistrationResponse response, String username, String password)
        loadedWithGoogle,
    required TResult Function(String string, String code) error,
  }) {
    return loadedWithGoogle(response, username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegistrationResponse response)? loaded,
    TResult? Function(
            RegistrationResponse response, String username, String password)?
        loadedWithGoogle,
    TResult? Function(String string, String code)? error,
  }) {
    return loadedWithGoogle?.call(response, username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegistrationResponse response)? loaded,
    TResult Function(
            RegistrationResponse response, String username, String password)?
        loadedWithGoogle,
    TResult Function(String string, String code)? error,
    required TResult orElse(),
  }) {
    if (loadedWithGoogle != null) {
      return loadedWithGoogle(response, username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedWithGoogle value) loadedWithGoogle,
    required TResult Function(_Error value) error,
  }) {
    return loadedWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedWithGoogle value)? loadedWithGoogle,
    TResult? Function(_Error value)? error,
  }) {
    return loadedWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedWithGoogle value)? loadedWithGoogle,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedWithGoogle != null) {
      return loadedWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _LoadedWithGoogle implements RegistrationState {
  const factory _LoadedWithGoogle(final RegistrationResponse response,
      final String username, final String password) = _$_LoadedWithGoogle;

  RegistrationResponse get response;
  String get username;
  String get password;
  @JsonKey(ignore: true)
  _$$_LoadedWithGoogleCopyWith<_$_LoadedWithGoogle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String string, String code});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? string = null,
    Object? code = null,
  }) {
    return _then(_$_Error(
      null == string
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String,
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.string, this.code);

  @override
  final String string;
  @override
  final String code;

  @override
  String toString() {
    return 'RegistrationState.error(string: $string, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.string, string) || other.string == string) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, string, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RegistrationResponse response) loaded,
    required TResult Function(
            RegistrationResponse response, String username, String password)
        loadedWithGoogle,
    required TResult Function(String string, String code) error,
  }) {
    return error(string, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegistrationResponse response)? loaded,
    TResult? Function(
            RegistrationResponse response, String username, String password)?
        loadedWithGoogle,
    TResult? Function(String string, String code)? error,
  }) {
    return error?.call(string, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegistrationResponse response)? loaded,
    TResult Function(
            RegistrationResponse response, String username, String password)?
        loadedWithGoogle,
    TResult Function(String string, String code)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(string, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedWithGoogle value) loadedWithGoogle,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedWithGoogle value)? loadedWithGoogle,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedWithGoogle value)? loadedWithGoogle,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements RegistrationState {
  const factory _Error(final String string, final String code) = _$_Error;

  String get string;
  String get code;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
