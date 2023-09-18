import 'package:intl/intl.dart';

///Clase para formatear numeros grandes y ponerlos como 3M o 3.1K

class HumanNumbersFormats {
  static String humanReadbleNumber(double number) {
    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);

    return formatterNumber;
  }
}
