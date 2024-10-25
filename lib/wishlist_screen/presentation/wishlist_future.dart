import 'dart:convert';

import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';
import '../../all_products/model/request/wishlist_products.dart';
import '../../all_products/model/response/all_products_response.dart';
import '../../app/app_config.dart';
import '../../app/dependency_injection/dependency_factory_impl.dart';



// class WishlistService extends HttpServiceBase {
//   WishlistService(Dio dioInstance) : super(dioInstance);
//
//
//   Future<AllProductsResponse> wishListProducts(WishlistProductsRequest request) =>
//       getQuery(
//         request: request,
//         mapper: (json, _) => AllProductsResponse.fromJson(json),
//         orElse: (json, data) =>
//             AllProductsResponse.fromJson({'products': json}),
//       );
//
// }

/*
class WishListClass {
  WishlistService service;
  WishListClass(this.service) : super();

  LocalStorage wishList = LocalStorage();

  Future<List<Product?>> getWlProducts() async {
    List<Product?> wishListProducts = [];

    List<int> wl = [];
    wl = await wishList.getWishList() ?? [];

    wl.forEach((wishItem) async {
      AllProductsResponse resp = await service!.wishListProducts(WishlistProductsRequest(id: wishItem));
      if(resp.products!=null) {
        wishListProducts.addAll(resp.products as Iterable<Product?>);
      }
    });

    print('getWishlistProducts');

    return wishListProducts;
  }

}
*/




Future<List<Product?>> doGetWlProducts() async {

  List<Product?> wishListProducts = [];
  LocalStorage wishList = LocalStorage();
  List<int> wl = [];
  wl = await wishList.getWishList() ?? [];

  const dep = DependencyFactoryImpl();

  Dio dio= dep.createDioForApi().dio;
  await Future.wait(wl.map((wishItem) async {
    // print('${AppConfig.baseUrl}/wp-json/wc/v3/products/$wishItem');
    // print(dio.options.baseUrl);
    // print(dio.options.headers);

    var response = await dio.request(
      '/wp-json/wc/v3/products/$wishItem',
      options: Options(
        method: 'GET',
      ),
    );

    // print('##################################');
    // print(json.encode(response.data));
    // print(response.statusCode);
    // print('##################################');
    if (response.statusCode == 200) {
      //print(json.encode(response.data));
      wishListProducts.add(Product.fromJson(response.data));
    }
    else {
      print(response.statusMessage);
    }
    //AllProductsResponse resp = await WishlistService(dio).wishListProducts(WishlistProductsRequest(id: wishItem));
    // if(resp.products!=null) {
    //   wishListProducts.addAll(resp.products as Iterable<Product?>);
    // }
  })
  );

  // print('//doGetWlProducts');
  // print(wishListProducts);

  return wishListProducts;
}






//
// var headers = {
//   'authorization': 'Basic Y2tfZDk4N2NmYzcxZDc4OTI4ZGE1NDRjN2VlOWNjOGI0ZGFhYzkxZGZiZjpjc18zNzA2YWU5OWM2YjA1OTI5NmZmNjg5YjQyMDdmZTI1Mjg5YzgxZTEx',
//   'Content-Type': 'application/json',
// };
// var request = http.Request('GET', Uri.parse('https://testapp.torricantine.it/wp-json/wc/v3/products/41329'));
//
// request.headers.addAll(headers);
//
// http.StreamedResponse response = await request.send();
//
// if (response.statusCode == 200) {
// print(await response.stream.bytesToString());
// }
// else {
// print(response.reasonPhrase);
// }
