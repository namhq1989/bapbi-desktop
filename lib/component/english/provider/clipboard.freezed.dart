// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clipboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClipboardTextState {
  String get currentText => throw _privateConstructorUsedError;
  String get previousText => throw _privateConstructorUsedError;
  bool get isNewText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClipboardTextStateCopyWith<ClipboardTextState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClipboardTextStateCopyWith<$Res> {
  factory $ClipboardTextStateCopyWith(
          ClipboardTextState value, $Res Function(ClipboardTextState) then) =
      _$ClipboardTextStateCopyWithImpl<$Res, ClipboardTextState>;
  @useResult
  $Res call({String currentText, String previousText, bool isNewText});
}

/// @nodoc
class _$ClipboardTextStateCopyWithImpl<$Res, $Val extends ClipboardTextState>
    implements $ClipboardTextStateCopyWith<$Res> {
  _$ClipboardTextStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentText = null,
    Object? previousText = null,
    Object? isNewText = null,
  }) {
    return _then(_value.copyWith(
      currentText: null == currentText
          ? _value.currentText
          : currentText // ignore: cast_nullable_to_non_nullable
              as String,
      previousText: null == previousText
          ? _value.previousText
          : previousText // ignore: cast_nullable_to_non_nullable
              as String,
      isNewText: null == isNewText
          ? _value.isNewText
          : isNewText // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClipboardTextStateImplCopyWith<$Res>
    implements $ClipboardTextStateCopyWith<$Res> {
  factory _$$ClipboardTextStateImplCopyWith(_$ClipboardTextStateImpl value,
          $Res Function(_$ClipboardTextStateImpl) then) =
      __$$ClipboardTextStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currentText, String previousText, bool isNewText});
}

/// @nodoc
class __$$ClipboardTextStateImplCopyWithImpl<$Res>
    extends _$ClipboardTextStateCopyWithImpl<$Res, _$ClipboardTextStateImpl>
    implements _$$ClipboardTextStateImplCopyWith<$Res> {
  __$$ClipboardTextStateImplCopyWithImpl(_$ClipboardTextStateImpl _value,
      $Res Function(_$ClipboardTextStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentText = null,
    Object? previousText = null,
    Object? isNewText = null,
  }) {
    return _then(_$ClipboardTextStateImpl(
      currentText: null == currentText
          ? _value.currentText
          : currentText // ignore: cast_nullable_to_non_nullable
              as String,
      previousText: null == previousText
          ? _value.previousText
          : previousText // ignore: cast_nullable_to_non_nullable
              as String,
      isNewText: null == isNewText
          ? _value.isNewText
          : isNewText // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ClipboardTextStateImpl implements _ClipboardTextState {
  _$ClipboardTextStateImpl(
      {required this.currentText,
      required this.previousText,
      required this.isNewText});

  @override
  final String currentText;
  @override
  final String previousText;
  @override
  final bool isNewText;

  @override
  String toString() {
    return 'ClipboardTextState(currentText: $currentText, previousText: $previousText, isNewText: $isNewText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClipboardTextStateImpl &&
            (identical(other.currentText, currentText) ||
                other.currentText == currentText) &&
            (identical(other.previousText, previousText) ||
                other.previousText == previousText) &&
            (identical(other.isNewText, isNewText) ||
                other.isNewText == isNewText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentText, previousText, isNewText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClipboardTextStateImplCopyWith<_$ClipboardTextStateImpl> get copyWith =>
      __$$ClipboardTextStateImplCopyWithImpl<_$ClipboardTextStateImpl>(
          this, _$identity);
}

abstract class _ClipboardTextState implements ClipboardTextState {
  factory _ClipboardTextState(
      {required final String currentText,
      required final String previousText,
      required final bool isNewText}) = _$ClipboardTextStateImpl;

  @override
  String get currentText;
  @override
  String get previousText;
  @override
  bool get isNewText;
  @override
  @JsonKey(ignore: true)
  _$$ClipboardTextStateImplCopyWith<_$ClipboardTextStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
