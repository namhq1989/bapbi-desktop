// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppStorageState {
  AppStorageService get svc => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStorageStateCopyWith<AppStorageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStorageStateCopyWith<$Res> {
  factory $AppStorageStateCopyWith(
          AppStorageState value, $Res Function(AppStorageState) then) =
      _$AppStorageStateCopyWithImpl<$Res, AppStorageState>;
  @useResult
  $Res call({AppStorageService svc});
}

/// @nodoc
class _$AppStorageStateCopyWithImpl<$Res, $Val extends AppStorageState>
    implements $AppStorageStateCopyWith<$Res> {
  _$AppStorageStateCopyWithImpl(this._value, this._then);

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
              as AppStorageService,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppStorageStateImplCopyWith<$Res>
    implements $AppStorageStateCopyWith<$Res> {
  factory _$$AppStorageStateImplCopyWith(_$AppStorageStateImpl value,
          $Res Function(_$AppStorageStateImpl) then) =
      __$$AppStorageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppStorageService svc});
}

/// @nodoc
class __$$AppStorageStateImplCopyWithImpl<$Res>
    extends _$AppStorageStateCopyWithImpl<$Res, _$AppStorageStateImpl>
    implements _$$AppStorageStateImplCopyWith<$Res> {
  __$$AppStorageStateImplCopyWithImpl(
      _$AppStorageStateImpl _value, $Res Function(_$AppStorageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? svc = null,
  }) {
    return _then(_$AppStorageStateImpl(
      svc: null == svc
          ? _value.svc
          : svc // ignore: cast_nullable_to_non_nullable
              as AppStorageService,
    ));
  }
}

/// @nodoc

class _$AppStorageStateImpl implements _AppStorageState {
  _$AppStorageStateImpl({required this.svc});

  @override
  final AppStorageService svc;

  @override
  String toString() {
    return 'AppStorageState(svc: $svc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStorageStateImpl &&
            (identical(other.svc, svc) || other.svc == svc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, svc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStorageStateImplCopyWith<_$AppStorageStateImpl> get copyWith =>
      __$$AppStorageStateImplCopyWithImpl<_$AppStorageStateImpl>(
          this, _$identity);
}

abstract class _AppStorageState implements AppStorageState {
  factory _AppStorageState({required final AppStorageService svc}) =
      _$AppStorageStateImpl;

  @override
  AppStorageService get svc;
  @override
  @JsonKey(ignore: true)
  _$$AppStorageStateImplCopyWith<_$AppStorageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
