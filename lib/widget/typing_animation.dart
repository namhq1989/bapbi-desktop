import 'dart:async';

import 'package:flutter/material.dart';

class TypingTextAnimation extends StatefulWidget {
  final String text;
  const TypingTextAnimation({super.key, required this.text});

  @override
  State<TypingTextAnimation> createState() => _TypingTextAnimationState();
}

class _TypingTextAnimationState extends State<TypingTextAnimation> {
  List<InlineSpan> _spans = [];
  String _displayedText = '';
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTyping();
  }

  @override
  void didUpdateWidget(TypingTextAnimation oldWidget) {
    if (widget.text != oldWidget.text) {
      _restartTyping();
    }
    super.didUpdateWidget(oldWidget);
  }

  void _startTyping() {
    _timer = Timer.periodic(const Duration(milliseconds: 30), (timer) {
      if (_displayedText.length < widget.text.length) {
        setState(() {
          _displayedText += widget.text[_displayedText.length];
          _spans = _buildTextSpans(_displayedText);
        });
      } else {
        _timer?.cancel();
      }
    });
  }

  void _restartTyping() {
    _timer?.cancel();
    _displayedText = '';
    _spans = [];
    _startTyping();
  }

  List<InlineSpan> _buildTextSpans(String text) {
    List<InlineSpan> spans = [];
    String pattern = r'\*\*(.*?)\*\*';
    RegExp regExp = RegExp(pattern);

    int lastMatchEnd = 0;
    for (final match in regExp.allMatches(text)) {
      final String leadingText = text.substring(lastMatchEnd, match.start);
      final String boldText = match.group(1)!;

      if (leadingText.isNotEmpty) {
        spans.add(TextSpan(text: leadingText));
      }
      spans.add(TextSpan(
          text: boldText, style: const TextStyle(fontWeight: FontWeight.bold)));
      lastMatchEnd = match.end;
    }

    if (lastMatchEnd < text.length) {
      spans.add(TextSpan(text: text.substring(lastMatchEnd)));
    }

    return spans;
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: _spans,
        style: const TextStyle(height: 1.5),
      ),
    );
  }
}
