// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'me.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MeRequest _$MeRequestFromJson(Map<String, dynamic> json) {
  return _MeRequest.fromJson(json);
}

/// @nodoc
mixin _$MeRequest {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeRequestCopyWith<$Res> {
  factory $MeRequestCopyWith(MeRequest value, $Res Function(MeRequest) then) =
      _$MeRequestCopyWithImpl<$Res, MeRequest>;
}

/// @nodoc
class _$MeRequestCopyWithImpl<$Res, $Val extends MeRequest>
    implements $MeRequestCopyWith<$Res> {
  _$MeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MeRequestImplCopyWith<$Res> {
  factory _$$MeRequestImplCopyWith(
          _$MeRequestImpl value, $Res Function(_$MeRequestImpl) then) =
      __$$MeRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MeRequestImplCopyWithImpl<$Res>
    extends _$MeRequestCopyWithImpl<$Res, _$MeRequestImpl>
    implements _$$MeRequestImplCopyWith<$Res> {
  __$$MeRequestImplCopyWithImpl(
      _$MeRequestImpl _value, $Res Function(_$MeRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$MeRequestImpl implements _MeRequest {
  _$MeRequestImpl();

  factory _$MeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeRequestImplFromJson(json);

  @override
  String toString() {
    return 'MeRequest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MeRequestImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$MeRequestImplToJson(
      this,
    );
  }
}

abstract class _MeRequest implements MeRequest {
  factory _MeRequest() = _$MeRequestImpl;

  factory _MeRequest.fromJson(Map<String, dynamic> json) =
      _$MeRequestImpl.fromJson;
}

MeResponse _$MeResponseFromJson(Map<String, dynamic> json) {
  return _MeResponse.fromJson(json);
}

/// @nodoc
mixin _$MeResponse {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  MeResponseData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeResponseCopyWith<MeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeResponseCopyWith<$Res> {
  factory $MeResponseCopyWith(
          MeResponse value, $Res Function(MeResponse) then) =
      _$MeResponseCopyWithImpl<$Res, MeResponse>;
  @useResult
  $Res call(
      {bool? success, String? message, String? code, MeResponseData? data});

  $MeResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$MeResponseCopyWithImpl<$Res, $Val extends MeResponse>
    implements $MeResponseCopyWith<$Res> {
  _$MeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MeResponseData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MeResponseDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $MeResponseDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MeResponseImplCopyWith<$Res>
    implements $MeResponseCopyWith<$Res> {
  factory _$$MeResponseImplCopyWith(
          _$MeResponseImpl value, $Res Function(_$MeResponseImpl) then) =
      __$$MeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success, String? message, String? code, MeResponseData? data});

  @override
  $MeResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$MeResponseImplCopyWithImpl<$Res>
    extends _$MeResponseCopyWithImpl<$Res, _$MeResponseImpl>
    implements _$$MeResponseImplCopyWith<$Res> {
  __$$MeResponseImplCopyWithImpl(
      _$MeResponseImpl _value, $Res Function(_$MeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$MeResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MeResponseData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeResponseImpl implements _MeResponse {
  _$MeResponseImpl({this.success, this.message, this.code, this.data});

  factory _$MeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final String? code;
  @override
  final MeResponseData? data;

  @override
  String toString() {
    return 'MeResponse(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, code, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeResponseImplCopyWith<_$MeResponseImpl> get copyWith =>
      __$$MeResponseImplCopyWithImpl<_$MeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeResponseImplToJson(
      this,
    );
  }
}

abstract class _MeResponse implements MeResponse {
  factory _MeResponse(
      {final bool? success,
      final String? message,
      final String? code,
      final MeResponseData? data}) = _$MeResponseImpl;

  factory _MeResponse.fromJson(Map<String, dynamic> json) =
      _$MeResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  String? get code;
  @override
  MeResponseData? get data;
  @override
  @JsonKey(ignore: true)
  _$$MeResponseImplCopyWith<_$MeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MeResponseData _$MeResponseDataFromJson(Map<String, dynamic> json) {
  return _MeResponseData.fromJson(json);
}

/// @nodoc
mixin _$MeResponseData {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeResponseDataCopyWith<MeResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeResponseDataCopyWith<$Res> {
  factory $MeResponseDataCopyWith(
          MeResponseData value, $Res Function(MeResponseData) then) =
      _$MeResponseDataCopyWithImpl<$Res, MeResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$MeResponseDataCopyWithImpl<$Res, $Val extends MeResponseData>
    implements $MeResponseDataCopyWith<$Res> {
  _$MeResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeResponseDataImplCopyWith<$Res>
    implements $MeResponseDataCopyWith<$Res> {
  factory _$$MeResponseDataImplCopyWith(_$MeResponseDataImpl value,
          $Res Function(_$MeResponseDataImpl) then) =
      __$$MeResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$MeResponseDataImplCopyWithImpl<$Res>
    extends _$MeResponseDataCopyWithImpl<$Res, _$MeResponseDataImpl>
    implements _$$MeResponseDataImplCopyWith<$Res> {
  __$$MeResponseDataImplCopyWithImpl(
      _$MeResponseDataImpl _value, $Res Function(_$MeResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$MeResponseDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeResponseDataImpl implements _MeResponseData {
  _$MeResponseDataImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$MeResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'MeResponseData(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeResponseDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeResponseDataImplCopyWith<_$MeResponseDataImpl> get copyWith =>
      __$$MeResponseDataImplCopyWithImpl<_$MeResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeResponseDataImplToJson(
      this,
    );
  }
}

abstract class _MeResponseData implements MeResponseData {
  factory _MeResponseData(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'name') final String? name}) = _$MeResponseDataImpl;

  factory _MeResponseData.fromJson(Map<String, dynamic> json) =
      _$MeResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$MeResponseDataImplCopyWith<_$MeResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
