import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'clipboard.g.dart';
part 'clipboard.freezed.dart';

@freezed
class ClipboardTextState with _$ClipboardTextState {
  factory ClipboardTextState({
    required String currentText,
    required String previousText,
    required bool isNewText,
  }) = _ClipboardTextState;
}

@Riverpod(keepAlive: true)
class ClipboardText extends _$ClipboardText {
  @override
  ClipboardTextState build() => ClipboardTextState(
        currentText: '',
        previousText: '',
        isNewText: false,
      );

  void textCopied(String value) {
    if (value != '' && value.length < 10 && value != state.currentText) {
      state = state.copyWith(
        currentText: value,
        previousText: state.currentText,
        isNewText: true,
      );
    }
  }

  void newTextProcessed() {
    state = state.copyWith(previousText: state.currentText, isNewText: false);
  }
}
