import 'package:intl/intl.dart';

class DateFormatter {
  DateFormatter._(); // private constructor, utility class

  /// Formats a date according to:
  /// - Today → "h:mm a" (e.g., 3:45 PM)
  /// - This year → "MMM d" (e.g., Jan 24)
  /// - Previous years → "MMM d, yyyy" (e.g., Dec 31, 2025)
  static String format(DateTime date) {
    final now = DateTime.now();

    // Check if today
    final isToday = date.year == now.year &&
        date.month == now.month &&
        date.day == now.day;

    if (isToday) {
      return DateFormat('h:mm a').format(date); // only time
    }

    // Check if this year
    final isThisYear = date.year == now.year;

    if (isThisYear) {
      return DateFormat('MMM d').format(date); // month + day
    }

    // Previous years
    return DateFormat('MMM d, yyyy').format(date);
  }
}
