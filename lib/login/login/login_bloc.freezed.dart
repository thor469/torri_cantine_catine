// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String username, String password, String? fcmToken)
        login,
    required TResult Function() logout,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithApple,
    required TResult Function() loginWithFacebook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password, String? fcmToken)?
        login,
    TResult? Function()? logout,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loginWithApple,
    TResult? Function()? loginWithFacebook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password, String? fcmToken)? login,
    TResult Function()? logout,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithApple,
    TResult Function()? loginWithFacebook,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithApple value) loginWithApple,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_LoginWithApple value)? loginWithApple,
    TResult? Function(_LoginWithFacebook value)? loginWithFacebook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithApple value)? loginWithApple,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoginCopyWith<$Res> {
  factory _$$_LoginCopyWith(_$_Login value, $Res Function(_$_Login) then) =
      __$$_LoginCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, String password, String? fcmToken});
}

/// @nodoc
class __$$_LoginCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_Login>
    implements _$$_LoginCopyWith<$Res> {
  __$$_LoginCopyWithImpl(_$_Login _value, $Res Function(_$_Login) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? fcmToken = freezed,
  }) {
    return _then(_$_Login(
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Login implements _Login {
  const _$_Login(this.username, this.password, this.fcmToken);

  @override
  final String username;
  @override
  final String password;
  @override
  final String? fcmToken;

  @override
  String toString() {
    return 'LoginEvent.login(username: $username, password: $password, fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Login &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password, fcmToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      __$$_LoginCopyWithImpl<_$_Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String username, String password, String? fcmToken)
        login,
    required TResult Function() logout,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithApple,
    required TResult Function() loginWithFacebook,
  }) {
    return login(username, password, fcmToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password, String? fcmToken)?
        login,
    TResult? Function()? logout,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loginWithApple,
    TResult? Function()? loginWithFacebook,
  }) {
    return login?.call(username, password, fcmToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password, String? fcmToken)? login,
    TResult Function()? logout,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithApple,
    TResult Function()? loginWithFacebook,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(username, password, fcmToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithApple value) loginWithApple,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_LoginWithApple value)? loginWithApple,
    TResult? Function(_LoginWithFacebook value)? loginWithFacebook,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithApple value)? loginWithApple,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements LoginEvent {
  const factory _Login(final String username, final String password,
      final String? fcmToken) = _$_Login;

  String get username;
  String get password;
  String? get fcmToken;
  @JsonKey(ignore: true)
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_Logout>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Logout implements _Logout {
  const _$_Logout();

  @override
  String toString() {
    return 'LoginEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String username, String password, String? fcmToken)
        login,
    required TResult Function() logout,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithApple,
    required TResult Function() loginWithFacebook,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password, String? fcmToken)?
        login,
    TResult? Function()? logout,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loginWithApple,
    TResult? Function()? loginWithFacebook,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password, String? fcmToken)? login,
    TResult Function()? logout,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithApple,
    TResult Function()? loginWithFacebook,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithApple value) loginWithApple,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_LoginWithApple value)? loginWithApple,
    TResult? Function(_LoginWithFacebook value)? loginWithFacebook,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithApple value)? loginWithApple,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements LoginEvent {
  const factory _Logout() = _$_Logout;
}

/// @nodoc
abstract class _$$_LoginWithGoogleCopyWith<$Res> {
  factory _$$_LoginWithGoogleCopyWith(
          _$_LoginWithGoogle value, $Res Function(_$_LoginWithGoogle) then) =
      __$$_LoginWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginWithGoogleCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_LoginWithGoogle>
    implements _$$_LoginWithGoogleCopyWith<$Res> {
  __$$_LoginWithGoogleCopyWithImpl(
      _$_LoginWithGoogle _value, $Res Function(_$_LoginWithGoogle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginWithGoogle implements _LoginWithGoogle {
  const _$_LoginWithGoogle();

  @override
  String toString() {
    return 'LoginEvent.loginWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String username, String password, String? fcmToken)
        login,
    required TResult Function() logout,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithApple,
    required TResult Function() loginWithFacebook,
  }) {
    return loginWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password, String? fcmToken)?
        login,
    TResult? Function()? logout,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loginWithApple,
    TResult? Function()? loginWithFacebook,
  }) {
    return loginWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password, String? fcmToken)? login,
    TResult Function()? logout,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithApple,
    TResult Function()? loginWithFacebook,
    required TResult orElse(),
  }) {
    if (loginWithGoogle != null) {
      return loginWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithApple value) loginWithApple,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
  }) {
    return loginWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_LoginWithApple value)? loginWithApple,
    TResult? Function(_LoginWithFacebook value)? loginWithFacebook,
  }) {
    return loginWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithApple value)? loginWithApple,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    required TResult orElse(),
  }) {
    if (loginWithGoogle != null) {
      return loginWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _LoginWithGoogle implements LoginEvent {
  const factory _LoginWithGoogle() = _$_LoginWithGoogle;
}

/// @nodoc
abstract class _$$_LoginWithAppleCopyWith<$Res> {
  factory _$$_LoginWithAppleCopyWith(
          _$_LoginWithApple value, $Res Function(_$_LoginWithApple) then) =
      __$$_LoginWithAppleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginWithAppleCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_LoginWithApple>
    implements _$$_LoginWithAppleCopyWith<$Res> {
  __$$_LoginWithAppleCopyWithImpl(
      _$_LoginWithApple _value, $Res Function(_$_LoginWithApple) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginWithApple implements _LoginWithApple {
  const _$_LoginWithApple();

  @override
  String toString() {
    return 'LoginEvent.loginWithApple()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginWithApple);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String username, String password, String? fcmToken)
        login,
    required TResult Function() logout,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithApple,
    required TResult Function() loginWithFacebook,
  }) {
    return loginWithApple();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password, String? fcmToken)?
        login,
    TResult? Function()? logout,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loginWithApple,
    TResult? Function()? loginWithFacebook,
  }) {
    return loginWithApple?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password, String? fcmToken)? login,
    TResult Function()? logout,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithApple,
    TResult Function()? loginWithFacebook,
    required TResult orElse(),
  }) {
    if (loginWithApple != null) {
      return loginWithApple();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithApple value) loginWithApple,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
  }) {
    return loginWithApple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_LoginWithApple value)? loginWithApple,
    TResult? Function(_LoginWithFacebook value)? loginWithFacebook,
  }) {
    return loginWithApple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithApple value)? loginWithApple,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    required TResult orElse(),
  }) {
    if (loginWithApple != null) {
      return loginWithApple(this);
    }
    return orElse();
  }
}

abstract class _LoginWithApple implements LoginEvent {
  const factory _LoginWithApple() = _$_LoginWithApple;
}

/// @nodoc
abstract class _$$_LoginWithFacebookCopyWith<$Res> {
  factory _$$_LoginWithFacebookCopyWith(_$_LoginWithFacebook value,
          $Res Function(_$_LoginWithFacebook) then) =
      __$$_LoginWithFacebookCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginWithFacebookCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_LoginWithFacebook>
    implements _$$_LoginWithFacebookCopyWith<$Res> {
  __$$_LoginWithFacebookCopyWithImpl(
      _$_LoginWithFacebook _value, $Res Function(_$_LoginWithFacebook) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginWithFacebook implements _LoginWithFacebook {
  const _$_LoginWithFacebook();

  @override
  String toString() {
    return 'LoginEvent.loginWithFacebook()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginWithFacebook);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String username, String password, String? fcmToken)
        login,
    required TResult Function() logout,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithApple,
    required TResult Function() loginWithFacebook,
  }) {
    return loginWithFacebook();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password, String? fcmToken)?
        login,
    TResult? Function()? logout,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loginWithApple,
    TResult? Function()? loginWithFacebook,
  }) {
    return loginWithFacebook?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password, String? fcmToken)? login,
    TResult Function()? logout,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithApple,
    TResult Function()? loginWithFacebook,
    required TResult orElse(),
  }) {
    if (loginWithFacebook != null) {
      return loginWithFacebook();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithApple value) loginWithApple,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
  }) {
    return loginWithFacebook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_LoginWithApple value)? loginWithApple,
    TResult? Function(_LoginWithFacebook value)? loginWithFacebook,
  }) {
    return loginWithFacebook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithApple value)? loginWithApple,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    required TResult orElse(),
  }) {
    if (loginWithFacebook != null) {
      return loginWithFacebook(this);
    }
    return orElse();
  }
}

abstract class _LoginWithFacebook implements LoginEvent {
  const factory _LoginWithFacebook() = _$_LoginWithFacebook;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginResponse userDatas) loggedIn,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginResponse userDatas)? loggedIn,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponse userDatas)? loggedIn,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

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
    extends _$LoginStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'LoginState.initial()';
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
    required TResult Function(LoginResponse userDatas) loggedIn,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginResponse userDatas)? loggedIn,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponse userDatas)? loggedIn,
    TResult Function(String error)? error,
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
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
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
    extends _$LoginStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'LoginState.loading()';
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
    required TResult Function(LoginResponse userDatas) loggedIn,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginResponse userDatas)? loggedIn,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponse userDatas)? loggedIn,
    TResult Function(String error)? error,
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
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LoginState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoggedInCopyWith<$Res> {
  factory _$$_LoggedInCopyWith(
          _$_LoggedIn value, $Res Function(_$_LoggedIn) then) =
      __$$_LoggedInCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginResponse userDatas});

  $LoginResponseCopyWith<$Res> get userDatas;
}

/// @nodoc
class __$$_LoggedInCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoggedIn>
    implements _$$_LoggedInCopyWith<$Res> {
  __$$_LoggedInCopyWithImpl(
      _$_LoggedIn _value, $Res Function(_$_LoggedIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDatas = null,
  }) {
    return _then(_$_LoggedIn(
      null == userDatas
          ? _value.userDatas
          : userDatas // ignore: cast_nullable_to_non_nullable
              as LoginResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginResponseCopyWith<$Res> get userDatas {
    return $LoginResponseCopyWith<$Res>(_value.userDatas, (value) {
      return _then(_value.copyWith(userDatas: value));
    });
  }
}

/// @nodoc

class _$_LoggedIn implements _LoggedIn {
  const _$_LoggedIn(this.userDatas);

  @override
  final LoginResponse userDatas;

  @override
  String toString() {
    return 'LoginState.loggedIn(userDatas: $userDatas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoggedIn &&
            (identical(other.userDatas, userDatas) ||
                other.userDatas == userDatas));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userDatas);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoggedInCopyWith<_$_LoggedIn> get copyWith =>
      __$$_LoggedInCopyWithImpl<_$_LoggedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginResponse userDatas) loggedIn,
    required TResult Function(String error) error,
  }) {
    return loggedIn(userDatas);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginResponse userDatas)? loggedIn,
    TResult? Function(String error)? error,
  }) {
    return loggedIn?.call(userDatas);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponse userDatas)? loggedIn,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(userDatas);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedIn implements LoginState {
  const factory _LoggedIn(final LoginResponse userDatas) = _$_LoggedIn;

  LoginResponse get userDatas;
  @JsonKey(ignore: true)
  _$$_LoggedInCopyWith<_$_LoggedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_Error(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'LoginState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

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
    required TResult Function(LoginResponse userDatas) loggedIn,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginResponse userDatas)? loggedIn,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponse userDatas)? loggedIn,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LoginState {
  const factory _Error(final String error) = _$_Error;

  String get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
