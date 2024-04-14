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
mixin _$AppHttpState {
  AppHttpService get svc => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppHttpStateCopyWith<AppHttpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppHttpStateCopyWith<$Res> {
  factory $AppHttpStateCopyWith(
          AppHttpState value, $Res Function(AppHttpState) then) =
      _$AppHttpStateCopyWithImpl<$Res, AppHttpState>;
  @useResult
  $Res call({AppHttpService svc});
}

/// @nodoc
class _$AppHttpStateCopyWithImpl<$Res, $Val extends AppHttpState>
    implements $AppHttpStateCopyWith<$Res> {
  _$AppHttpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? svc = null,
  }) {
    return _then(_value.copyWith(
      svc: null == svc
          ? _value.svc
          : svc // ignore: cast_nullable_to_non_nullable
              as AppHttpService,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppHttpStateImplCopyWith<$Res>
    implements $AppHttpStateCopyWith<$Res> {
  factory _$$AppHttpStateImplCopyWith(
          _$AppHttpStateImpl value, $Res Function(_$AppHttpStateImpl) then) =
      __$$AppHttpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppHttpService svc});
}

/// @nodoc
class __$$AppHttpStateImplCopyWithImpl<$Res>
    extends _$AppHttpStateCopyWithImpl<$Res, _$AppHttpStateImpl>
    implements _$$AppHttpStateImplCopyWith<$Res> {
  __$$AppHttpStateImplCopyWithImpl(
      _$AppHttpStateImpl _value, $Res Function(_$AppHttpStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? svc = null,
  }) {
    return _then(_$AppHttpStateImpl(
      svc: null == svc
          ? _value.svc
          : svc // ignore: cast_nullable_to_non_nullable
              as AppHttpService,
    ));
  }
}

/// @nodoc

class _$AppHttpStateImpl implements _AppHttpState {
  _$AppHttpStateImpl({required this.svc});

  @override
  final AppHttpService svc;

  @override
  String toString() {
    return 'AppHttpState(svc: $svc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppHttpStateImpl &&
            (identical(other.svc, svc) || other.svc == svc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, svc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppHttpStateImplCopyWith<_$AppHttpStateImpl> get copyWith =>
      __$$AppHttpStateImplCopyWithImpl<_$AppHttpStateImpl>(this, _$identity);
}

abstract class _AppHttpState implements AppHttpState {
  factory _AppHttpState({required final AppHttpService svc}) =
      _$AppHttpStateImpl;

  @override
  AppHttpService get svc;
  @override
  @JsonKey(ignore: true)
  _$$AppHttpStateImplCopyWith<_$AppHttpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
