import 'package:intl/intl.dart';

extension StringFormater on String {
  String getFistTwoCharacters() {
    return this.substring(0, 2).toUpperCase();
  }

  String getLongDate() {
    DateTime dateTime = DateTime.parse(this);
    String result = DateFormat.yMMMMd('en_US').format(dateTime);
    return result;
  }
}
