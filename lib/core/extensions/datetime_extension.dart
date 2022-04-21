import 'package:intl/intl.dart';


extension DateTimeExtension on DateTime {
  String formatTimeString() {
    return DateFormat('HH:mm').format(this);
  }

  String formatMonthYearString() {
    return DateFormat('MMM, yyyy').format(this);
  }

  String formatDateTimeString() {
    return DateFormat('dd/MM/yyyy HH:mm').format(this);
  }

  String formatDateTimeStringNotification() {
    return DateFormat('dd MMM yyyy HH:mm aaa').format(this);
  }

  String formatTimeDateString() {
    return DateFormat('HH:mm dd/MM/yyyy').format(this);
  }

  String formatDayString() {
    return DateFormat('dd').format(this);
  }

  String formatMonthString() {
    return DateFormat('MMM').format(this);
  }

  String formatDateDefault() {
    return DateFormat('dd/MM/yyyy').format(this);
  }

  String formatDateFavourite() {
    return DateFormat('dd MMM yyyy').format(this);
  }

  String formatTimeFavourite() {
    return DateFormat('HH:mm aaa').format(this);
  }

  String formatDayOfBirthday() {
    return DateFormat('MMM dd, yyyy').format(this);
  }

  bool isSameDate(DateTime other) {
    return this.year == other.year &&
        this.month == other.month &&
        this.day == other.day;
  }
}
