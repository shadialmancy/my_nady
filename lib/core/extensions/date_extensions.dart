extension DateRangeFormatter on String {
  String formatDateRangeWith(String end) {
    if (isEmpty || end.isEmpty) return '';
    
    try {
      // Parse dates from "DD-MM-YYYY" format
      final startParts = split('-');
      final endParts = end.split('-');
      
      if (startParts.length != 3 || endParts.length != 3) return '';
      
      final startDay = int.parse(startParts[0]);
      final startMonth = int.parse(startParts[1]);
      final startYear = int.parse(startParts[2]);
      
      final endDay = int.parse(endParts[0]);
      final endMonth = int.parse(endParts[1]);
      final endYear = int.parse(endParts[2]);
      
      const monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
      
      final startMonthName = monthNames[startMonth - 1];
      final endMonthName = monthNames[endMonth - 1];
      
      if (startYear == endYear && startMonth == endMonth) {
        // Same month and year: "Jan 16 - 20, 2024"
        return '$startMonthName $startDay - $endDay, $startYear';
      } else if (startYear == endYear) {
        // Same year, different months: "Jan 16 - Feb 20, 2024"
        return '$startMonthName $startDay - $endMonthName $endDay, $startYear';
      } else {
        // Different years: "Jan 16, 2024 - Feb 20, 2025"
        return '$startMonthName $startDay, $startYear - $endMonthName $endDay, $endYear';
      }
    } catch (e) {
      return '';
    }
  }
}

String formatDateRange(String? start, String? end) {
  if (start == null || end == null) return '';
  return start.formatDateRangeWith(end);
}

