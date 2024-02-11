import 'package:intl/intl.dart';

final dateFormatter = DateFormat('yyyy年M月d日');

extension DateTimeExtension on DateTime {
  String formatYMD() {
    return dateFormatter.format(this);
  }
}
