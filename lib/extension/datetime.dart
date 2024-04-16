import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

const String jsDateFormat = 'yyyy-MM-ddTHH:mm:ssZ';

class TimestampSerializer implements JsonConverter<DateTime, dynamic> {
  const TimestampSerializer();

  @override
  DateTime fromJson(dynamic timestamp) {
    if (timestamp != null && timestamp != '') {
      return DateTime.parse(timestamp);
    }

    return DateTime.fromMillisecondsSinceEpoch(0);
  }

  @override
  String toJson(DateTime date) => date.toString();
}

extension DateTimeFormat on DateTime {
  String toDDMMYYY() {
    final value =
        DateFormat(jsDateFormat).parseUTC(toIso8601String()).toLocal();
    return DateFormat('dd/MM/yyyy').format(value);
  }

  String toMMYYY() {
    final value =
        DateFormat(jsDateFormat).parseUTC(toIso8601String()).toLocal();
    return DateFormat('MM/yyyy').format(value);
  }
}
