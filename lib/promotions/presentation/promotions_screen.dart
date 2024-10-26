import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torri_cantine_app/all_products/all_products/all_products_bloc.dart';
import 'package:torri_cantine_app/all_products/model/response/all_products_response.dart';
import 'package:torri_cantine_app/all_products/widgets/products_grid.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/home_page/widgets/custom_banner.dart';

class PromotionsScreen extends StatefulWidget {
  const PromotionsScreen({
    super.key,
  });

  @override
  State<PromotionsScreen> createState() => _PromotionsScreenState();
}

class _PromotionsScreenState extends State<PromotionsScreen> {
  @override
  void initState() {
    context.read<AllProductsBloc>().add(const AllProductsEvent.fetch(page: 1));
    super.initState();
  }



  @override
  Widget build(BuildContext context) {

    List<Product>? promotedProd(List<Product> products) {
      return products.where((p) {
        bool isInPromotionCategory = p.categories!.any((pc) => pc.name.compareTo("Promozioni") == 0);

        // Convert price and regularPrice to double for comparison
        double productPrice = double.tryParse(p.price.toString()) ?? 0.0; // Using 0.0 if parsing fails
        double productRegularPrice = double.tryParse(p.regular_price.toString()) ?? 0.0;

        bool hasDiscount = productPrice < productRegularPrice; // Check if there is a discount

        return isInPromotionCategory && hasDiscount; // Both conditions must be true
      }).toList();
    }


    return PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          print('@#@#@#@ #@#@#@#@# @# @#@ #@# @# @# @# @ # #@ #@ @# pop invoked');
          MainNavigation.pop(context);
          //return;
        },
        child:Scaffold(
          backgroundColor: Color.fromARGB(255, 244, 244, 244),
          body: BlocBuilder<AllProductsBloc, AllProductsState>(
            builder: (context, state) => state.maybeWhen(
              initial: () => const Center(
                child: CircularProgressIndicator(
                  color: Color.fromARGB(255, 161, 29, 51),
                ),
              ),
              loading: (model, page) {
                if(model.isEmpty) {
                  return Center(
                    child: CircularProgressIndicator(
                      color: Color.fromARGB(255, 161, 29, 51),
                    ),
                  );
                }
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      // const Padding(
                      //   padding:
                      //       EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
                      //   child: CustomBanner(),
                      // ),
                      Padding(padding: EdgeInsets.only(top:24),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ProductGrid(
                          products: promotedProd(model ?? []) ?? [],
                          pageNumber: page,
                        ),
                      ),
                    ],
                  ),
                );

              },
              loaded: (model, page) => SingleChildScrollView(
                child: Column(
                  children: [
                    // const Padding(
                    //   padding:
                    //       EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
                    //   child: CustomBanner(),
                    // ),
                    Padding(padding: EdgeInsets.only(top:24),),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ProductGrid(
                        products: promotedProd(model ?? []) ?? [],
                        pageNumber: page,

                      ),
                    ),
                  ],
                ),
              ),
              error: () => const SizedBox(),
              orElse: () => const SizedBox(),
            ),
          ),
        )

    );


  }




}
