import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:torri_cantine_app/all_products/product_score/Product_Score_state.dart';


class ProductPointsCubit extends Cubit<ProductPointsState> {
  ProductPointsCubit() : super(ProductPointsState());

  // Fetch product points based on product ID
  Future<void> getProductPoints(int productId) async {
    emit(state.copyWith(isLoading: true, productPoints: null, error: null)); // Reset state for loading

    try {
      var headers = {
        'Cookie': 'ensure_cbuid=6921001b581c0e6b702eeac63a3a217a969077936',
      };

      // Make the GET request
      var response = await http.get(
        Uri.parse('https://testapp.torricantine.it/wp-json/wp/v2/get_product_points?id=$productId'),
        headers: headers,
      );

      // Handle successful response
      if (response.statusCode == 200) {
        final productPoints = int.parse(response.body); // Parse product points from response
        emit(state.copyWith(isLoading: false, productPoints: productPoints));
      } else {
        // Handle error response
        emit(state.copyWith(isLoading: false, error: response.reasonPhrase));
      }
    } catch (e) {
      // Handle exceptions
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }
}
