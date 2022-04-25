import 'package:tidolzhon/utils/currency.dart';

class Amount {
  int fulls;
  int parts;
  final Currency currency;

  Amount({
    this.fulls = 0,
    this.parts = 0,
    this.currency = Currency.rub,
  });

  void add(int fulls, [int parts = 0]) {
    fulls += fulls;
    parts += parts;
  }
}
