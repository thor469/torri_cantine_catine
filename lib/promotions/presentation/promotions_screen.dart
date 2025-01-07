import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:torri_cantine_app/all_products/all_products/all_products_bloc.dart';
import 'package:torri_cantine_app/all_products/model/response/all_products_response.dart';
import 'package:torri_cantine_app/all_products/widgets/product_preview.dart';

class PromotionsScreen extends StatefulWidget {
  const PromotionsScreen({super.key});

  @override
  State<PromotionsScreen> createState() => _PromotionsScreenState();
}

class _PromotionsScreenState extends State<PromotionsScreen> {
  final PagingController<int, Product> _pagingController = PagingController(firstPageKey: 1);
  static const int _perPage = 10;

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      fetch(pageKey);
    });
  }

  List<Product>? promotedProd(List<Product> products) {
    return products.where((p) {
      bool isInPromotionCategory = p.categories!.any((pc) => pc.name.compareTo("Promozioni") == 0);
      double productPrice = double.tryParse(p.price.toString()) ?? 0.0;
      double productRegularPrice = double.tryParse(p.regular_price.toString()) ?? 0.0;
      bool hasDiscount = productPrice < productRegularPrice;
      return isInPromotionCategory && hasDiscount;
    }).toList();
  }


  void fetch(int pageKey) async {
    AllProductsResponse? products = await context.read<AllProductsBloc>().fetch(pageKey, 10, null, null);
    List<Product>? promoted  = promotedProd(products?.products ?? []);
      final isLastPage = (products?.products?.length ?? 0 ) < _perPage;
      if (isLastPage) {
        _pagingController.appendLastPage(promoted ?? []);
      } else {
        _pagingController.appendPage(promoted ?? [], pageKey + 1);
      }
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 244, 244),
      body: PagedGridView<int, Product>(
        pagingController: _pagingController,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 0.525,
        ),
        builderDelegate: PagedChildBuilderDelegate<Product>(
          itemBuilder: (context, product, index) {
            return ProductPreview(
              isPurchasableSable: product.purchasable ?? false,
              id: product.id ?? 0,
              image: product.images.isEmpty ? "" : product.images.first?.src ?? "",
              name: product.name ?? 'Unknown Product',
              price: product.price ?? "0",
              regular_price: product.regular_price ?? "0",
              description: product.description ?? 'No Description Available',
              short_description: product.short_description ?? 'No Short Description',
              average_rating: product.average_rating ?? "0",
              tags: product.tags ?? [],
              categories: product.categories ?? [],
              type: product.type ?? 'Unknown',
              productPoint: product.points ?? 0,
            );
          },
          firstPageProgressIndicatorBuilder: (_) => const Center(
            child: CircularProgressIndicator(
              color: Color.fromARGB(255, 161, 29, 51),
            ),
          ),
          newPageProgressIndicatorBuilder: (_) => const Center(
            child: CircularProgressIndicator(
              color: Color.fromARGB(255, 161, 29, 51),
            ),
          ),
          noItemsFoundIndicatorBuilder: (_) => const Center(
            child: Text('Nessuna promozione trovata'),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}