import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_single_product_state.dart';

class CounterSingleProductCubit extends Cubit<Map<String, int>> {
  CounterSingleProductCubit() : super(<String, int>{});
  @override
  void emit(Map<String, int> state) {
    super.emit(state);
  }

  void addCartItem(String key) async {
    var newValue = state.update(
      key,
      (value) => value + 1,
      ifAbsent: () {
        state.addAll({key: 1});
        return 1;
      },
    );
    final newMap = Map<String, int>.from(state);
    emit(newMap);
  }

  void removeCartItem(String key) async {
    var newValue = state.update(
      key,
      (value) => value - 1,
    );
    final newMap = Map<String, int>.from(state);
    emit(newMap);
  }
}
