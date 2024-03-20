import 'package:kenali_sister/core.dart';
import 'package:kenali_sister/shared/util/date_formater/date_formater.dart';

trimString(String? string) {
  if (string == null) {
    return "";
  } else if (string == "         ") {
    return "";
  } else if (string.contains("null")) {
    return "";
  } else {
    final trimmedString = string.trim();
    return trimmedString.isEmpty ? "" : trimmedString;
  }
}

trimStringStrip(String? string) {
  if (string == null) {
    return "-";
  } else if (string.contains("null")) {
    return "-";
  } else {
    final trimmedString = string.trim();
    return trimmedString.isEmpty ? "-" : trimmedString;
  }
}

checkDate(String? date) {
  if (date == null) {
    return "";
  } else if (date.trim().contains("null")) {
    return "";
  } else {
    final trimmedString = date.trim();
    return trimmedString.isEmpty
        ? formatSelectedDate(DateTime.now())
        : trimmedString;
  }
}

checkNull(String? string) {
  if (string == null) {
    return "";
  } else if (string.contains("null")) {
    return "";
  } else {
    return string;
  }
}
