// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HttpState {
  ConfigState get config => throw _privateConstructorUsedError;
  Dio get dio => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HttpStateCopyWith<HttpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpStateCopyWith<$Res> {
  factory $HttpStateCopyWith(HttpState value, $Res Function(HttpState) then) =
      _$HttpStateCopyWithImpl<$Res, HttpState>;
  @useResult
  $Res call({ConfigState config, Dio dio});

  $ConfigStateCopyWith<$Res> get config;
}

/// @nodoc
class _$HttpStateCopyWithImpl<$Res, $Val extends HttpState>
    implements $HttpStateCopyWith<$Res> {
  _$HttpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? config = null,
    Object? dio = null,
  }) {
    return _then(_value.copyWith(
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as ConfigState,
      dio: null == dio
          ? _value.dio
          : dio // ignore: cast_nullable_to_non_nullable
              as Dio,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConfigStateCopyWith<$Res> get config {
    return $ConfigStateCopyWith<$Res>(_value.config, (value) {
      return _then(_value.copyWith(config: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HttpStateImplCopyWith<$Res>
    implements $HttpStateCopyWith<$Res> {
  factory _$$HttpStateImplCopyWith(
          _$HttpStateImpl value, $Res Function(_$HttpStateImpl) then) =
      __$$HttpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConfigState config, Dio dio});

  @override
  $ConfigStateCopyWith<$Res> get config;
}

/// @nodoc
class __$$HttpStateImplCopyWithImpl<$Res>
    extends _$HttpStateCopyWithImpl<$Res, _$HttpStateImpl>
    implements _$$HttpStateImplCopyWith<$Res> {
  __$$HttpStateImplCopyWithImpl(
      _$HttpStateImpl _value, $Res Function(_$HttpStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? config = null,
    Object? dio = null,
  }) {
    return _then(_$HttpStateImpl(
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as ConfigState,
      dio: null == dio
          ? _value.dio
          : dio // ignore: cast_nullable_to_non_nullable
              as Dio,
    ));
  }
}

/// @nodoc

class _$HttpStateImpl implements _HttpState {
  _$HttpStateImpl({required this.config, required this.dio});

  @override
  final ConfigState config;
  @override
  final Dio dio;

  @override
  String toString() {
    return 'HttpState(config: $config, dio: $dio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpStateImpl &&
            (identical(other.config, config) || other.config == config) &&
            (identical(other.dio, dio) || other.dio == dio));
  }

  @override
  int get hashCode => Object.hash(runtimeType, config, dio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpStateImplCopyWith<_$HttpStateImpl> get copyWith =>
      __$$HttpStateImplCopyWithImpl<_$HttpStateImpl>(this, _$identity);
}

abstract class _HttpState implements HttpState {
  factory _HttpState(
      {required final ConfigState config,
      required final Dio dio}) = _$HttpStateImpl;

  @override
  ConfigState get config;
  @override
  Dio get dio;
  @override
  @JsonKey(ignore: true)
  _$$HttpStateImplCopyWith<_$HttpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
