import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
formatDateDayMonthYear(String? date) {
  if (date == null || date.isEmpty) {
    return "-";
  } else if (date.contains("null")) {
    return "-";
  }
  initializeDateFormatting('id');

  DateTime dateConverted = DateTime.parse(date);
  return "${dateConverted.day.toString().padLeft(2, '0')}-${dateConverted.month.toString().padLeft(2, '0')}-${dateConverted.year.toString().padLeft(2, '0')}";
}

formatDate(String? date) {
  if (date!.isEmpty) {
    return "-";
  } else if (date.contains("null")) {
    return "-";
  }
  initializeDateFormatting('id');

  DateTime dateConverted = DateTime.parse(date);
  return "${dateConverted.day.toString().padLeft(2, '0')}-${dateConverted.month.toString().padLeft(2, '0')}-${dateConverted.year.toString().padLeft(2, '0')}";
}

formatSelectedDate(DateTime selectedDate) {
  String selectedDateString = DateFormat('yyyy-MM-dd').format(selectedDate);
  return selectedDateString;
}

formatDateFull(String? date) {
  if (date.toString().isEmpty) {
    return "-";
  } else if (date.toString().contains("null")) {
    return "-";
  }
  initializeDateFormatting('id');

  DateTime dateConverted = DateTime.parse(date.toString());
  String formattedDate = DateFormat.yMMMMd('id').format(dateConverted);

  return formattedDate.toUpperCase();
}

formatDateWithTime(String? date) {
  if (date.toString().isEmpty) {
    return "-";
  } else if (date.toString().contains("null")) {
    return "-";
  }
  initializeDateFormatting('id');

  DateTime originalDate = DateTime.parse(date.toString());

  String formattedDate = DateFormat('d MMMM y HH:mm:ss').format(originalDate);

  return formattedDate.toUpperCase();
}

formatOnlyDate(String? date) {
  if (date.toString().isEmpty) {
    return "-";
  } else if (date.toString().contains("null")) {
    return "-";
  }
  initializeDateFormatting('id');

  DateTime originalDate = DateTime.parse(date.toString());

  String formattedDate = DateFormat('yyyy-MM-dd').format(originalDate);

  return formattedDate;
}

ubahFormatTanggal(String tanggal) {
  DateTime dateTime = DateTime.parse(tanggal);

  String tanggalAkhir =
      "${dateTime.day.toString().padLeft(2, '0')}${dateTime.month.toString().padLeft(2, '0')}${dateTime.year.toString()}";

  return tanggalAkhir;
}

getTimeFromDate(String date) {
  DateTime timestamp = DateTime.parse(date);
  String time = DateFormat('HH:mm:ss').format(timestamp);
  return time;
}
