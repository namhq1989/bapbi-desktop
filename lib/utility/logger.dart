import 'dart:convert';

import 'package:talker/talker.dart';

class AppLogger {
  late TalkerLogger _logger;
  late JsonEncoder _encoder;
  late String _prefix;

  AppLogger({String? prefix}) {
    _logger = TalkerLogger();
    _encoder = const JsonEncoder.withIndent(' ');
    _prefix = prefix ?? '';
  }

  void debug(String msg) {
    _logger.debug('[$_prefix] $msg');
  }

  void info(String msg) {
    _logger.info('[$_prefix] $msg');
  }

  void error(String msg) {
    _logger.error('[$_prefix] $msg');
  }

  void warning(String msg) {
    _logger.warning('[$_prefix] $msg');
  }

  void print(dynamic data) {
    final prettyData = _encoder.convert(data);
    _logger.log(prettyData, pen: AnsiPen()..xterm(46));
  }
}
