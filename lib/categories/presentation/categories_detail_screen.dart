import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torri_cantine_app/all_products/all_products/all_products_bloc.dart';
import 'package:torri_cantine_app/all_products/model/response/all_products_response.dart';
import 'package:torri_cantine_app/all_products/widgets/products_grid.dart';
import 'package:torri_cantine_app/app/common/sub_page_appbar.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';

class CategoriesDetailScreen extends StatefulWidget {
  final int id;
  const CategoriesDetailScreen({super.key, required this.id});

  @override
  State<CategoriesDetailScreen> createState() => _CategoriesDetailScreenState();
}

class _CategoriesDetailScreenState extends State<CategoriesDetailScreen> {
  @override
  void initState() {
    context.read<AllProductsBloc>().add(
          AllProductsEvent.filterProducts(
            page: 1,
            categories: widget.id.toString(),
          ),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return PopScope(
        canPop: false,
        onPopInvoked : (didPop){
        },
        child:Scaffold(
          backgroundColor: const Color.fromARGB(255, 244, 244, 244),
          appBar: SubPageAppbar(
            text: "PRODOTTI PER CATEGORIA",
            // onTap: () => MainNavigation.push(
            //   context,
            //   const MainNavigation.home(),
            // ),
            onTap: () => MainNavigation.pop(
              context,
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.00, vertical: 8),
              child: Column(
                children: [
                  BlocBuilder<AllProductsBloc, AllProductsState>(
                    builder: (context, state) => state.maybeWhen(
                      initial: () => SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: const Center(
                          child: CircularProgressIndicator(
                            color: Color.fromARGB(255, 161, 29, 51),
                          ),
                        ),
                      ),
                      loading: (model, page) {
                        if(model.isEmpty) {
                          return SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: const Center(
                              child: CircularProgressIndicator(
                                color: Color.fromARGB(255, 161, 29, 51),
                              ),
                            ),
                          );
                        }

                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: ProductGrid(
                            products: model,
                            pageNumber: -1,
                          ),
                        );

                      } ,
                      loaded: (model, page) => Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: ProductGrid(
                          products: model,
                          pageNumber: -1,
                        ),
                      ),
                      error: () => const SizedBox(),
                      orElse: () => const SizedBox(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )

    );



  }

  List<Product>? categoriesProd(List<Product> products) {
    return products
        .where((p) => p.categories!.any((pc) => pc.id == widget.id))
        .toList();
  }
}
