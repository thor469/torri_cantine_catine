// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categories_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoriesRequest _$CategoriesRequestFromJson(Map<String, dynamic> json) {
  return _CategoriesRequest.fromJson(json);
}

/// @nodoc
mixin _$CategoriesRequest {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesRequestCopyWith<$Res> {
  factory $CategoriesRequestCopyWith(
          CategoriesRequest value, $Res Function(CategoriesRequest) then) =
      _$CategoriesRequestCopyWithImpl<$Res, CategoriesRequest>;
}

/// @nodoc
class _$CategoriesRequestCopyWithImpl<$Res, $Val extends CategoriesRequest>
    implements $CategoriesRequestCopyWith<$Res> {
  _$CategoriesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CategoriesRequestCopyWith<$Res> {
  factory _$$_CategoriesRequestCopyWith(_$_CategoriesRequest value,
          $Res Function(_$_CategoriesRequest) then) =
      __$$_CategoriesRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CategoriesRequestCopyWithImpl<$Res>
    extends _$CategoriesRequestCopyWithImpl<$Res, _$_CategoriesRequest>
    implements _$$_CategoriesRequestCopyWith<$Res> {
  __$$_CategoriesRequestCopyWithImpl(
      _$_CategoriesRequest _value, $Res Function(_$_CategoriesRequest) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_CategoriesRequest extends _CategoriesRequest {
  _$_CategoriesRequest() : super._();

  factory _$_CategoriesRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CategoriesRequestFromJson(json);

  @override
  String toString() {
    return 'CategoriesRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CategoriesRequest);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoriesRequestToJson(
      this,
    );
  }
}

abstract class _CategoriesRequest extends CategoriesRequest {
  factory _CategoriesRequest() = _$_CategoriesRequest;
  _CategoriesRequest._() : super._();

  factory _CategoriesRequest.fromJson(Map<String, dynamic> json) =
      _$_CategoriesRequest.fromJson;
}
