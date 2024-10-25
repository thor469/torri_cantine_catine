
import 'package:easy_localization/easy_localization.dart';

extension on double {

  String formatNumber() {
    return NumberFormat.currency(
      locale: 'it',
      symbol: '€',
      decimalDigits: 2,
    ).format(this);
  }

}