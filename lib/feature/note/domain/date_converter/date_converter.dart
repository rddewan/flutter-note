

import 'package:intl/intl.dart';

abstract class DateConverter {

  static String getFormattedDate(String stringDateTime) {
    final date = DateTime.parse(stringDateTime);
    return DateFormat('d/MM/yyyy hh:m').format(date);
  }
}