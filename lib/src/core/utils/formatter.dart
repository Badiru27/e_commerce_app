import 'package:intl/intl.dart';

class AppFormatter {
  static var formatCurrency =
      NumberFormat.currency(locale: "en_US", symbol: "₦");

  static var formatCurrencyNoDecimal =
      NumberFormat.currency(locale: "en_US", symbol: "₦", decimalDigits: 0);
  static var formatNumber = NumberFormat.decimalPattern();

  static var dateFormatter = DateFormat('dd-MM-yyyy');
}
