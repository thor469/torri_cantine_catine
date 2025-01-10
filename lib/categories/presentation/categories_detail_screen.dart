import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:torri_cantine_app/all_products/all_products/all_products_bloc.dart';
import 'package:torri_cantine_app/all_products/model/response/all_products_response.dart';
import 'package:torri_cantine_app/all_products/widgets/product_preview.dart';
import 'package:torri_cantine_app/app/common/sub_page_appbar.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';

@RoutePage()
class CategoriesDetailScreen extends StatefulWidget {
  final int id;
  const CategoriesDetailScreen({super.key, required this.id});

  @override
  State<CategoriesDetailScreen> createState() => _CategoriesDetailScreenState();
}

class _CategoriesDetailScreenState extends State<CategoriesDetailScreen> {
  final PagingController<int, Product> _pagingController = PagingController(firstPageKey: 1);
  static const int _perPage = 10;

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      fetch(pageKey);
    });
  }

  void fetch(int pageKey) async {
    AllProductsResponse? products = await context.read<AllProductsBloc>().filterProducts(pageKey, 10, widget.id.toString(), null, null,null, null);
    final isLastPage = (products?.products?.length ?? 0 ) < _perPage;
    if (isLastPage) {
      _pagingController.appendLastPage(products?.products ?? []);
    } else {
      _pagingController.appendPage(products?.products  ?? [], pageKey + 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 244, 244, 244),
      child: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 244, 244, 244),
          appBar: SubPageAppbar(
            text: "PRODOTTI PER CATEGORIA",
            onTap: () => context.router.popForced(),
          ),
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
                child: Text('Nessun prodotto trovato per questa categoria.'),
              ),
            ),
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