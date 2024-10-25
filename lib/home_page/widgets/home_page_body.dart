import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torri_cantine_app/all_products/all_products/all_products_bloc.dart';
import 'package:torri_cantine_app/all_products/model/response/all_products_response.dart';
import 'package:torri_cantine_app/all_products/widgets/categories_carousel.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/categories/categories/categories_bloc.dart';
import 'package:torri_cantine_app/home_page/widgets/custom_post.dart';
import 'package:torri_cantine_app/home_page/widgets/in_highlights.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {


  LocalStorage storage = LocalStorage();
  List<Product> storageProducts = [];


  @override
  void initState() {
    //context.read<AllProductsBloc>().add(const AllProductsEvent.fetch(page: 1));
    context.read<CategoriesBloc>().add(const CategoriesEvent.fetch());
    //getProductsFormStorage();

    super.initState();
  }

  getProductsFormStorage() async {
    List<Product>? a = (await storage.getproducts())?.cast<Product>();
    if (a != null) storageProducts = a;
    return a;
  }

  @override
  Widget build(BuildContext context) {
    //print('##### HERE ###################');

    return BlocBuilder<AllProductsBloc, AllProductsState>(

        builder: (context, state) =>
            state.maybeWhen(
              loading: (products, page) {
                if (products.isEmpty) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Color.fromARGB(255, 161, 29, 51),
                    ),
                  );
                } else {
                  return productsBody(products, page, page != 0);
                  //return productsBody(storageProducts,page,page!=0);
                }
              },
              // loaded: (products, page) {
              //   //print('################ products');
              //
              //   return productsBody(products,page,false);
              //   //print(products);
              //   //print('################ products //');
              //
              // },
              error: () {
                // print('ERROR');
                // print(state);
                // print(context);
                return Center(
                  child: RichText(
                      text: TextSpan(
                          text: 'Si è verificato un errore, ',
                          style: TextStyle(
                            //fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 113, 112, 112),
                          ),
                          children: [
                            TextSpan(
                              text: 'riprova',
                              style: TextStyle(
                                //fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 161, 29, 51),
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  //MainNavigation.welcome();
                                  MainNavigation.push(context,
                                      MainNavigation.welcome());
                                },
                            ),
                            TextSpan(
                              text: '.',
                            )
                          ]
                      )
                  ),
                );
              },
              orElse: () {
                //print('orELSE');
                //print(state);
                //print(context);
                return const SizedBox();
              },
            ));
  }


  Widget productsBody(products, page, isLoading) {
    LocalStorage storage = LocalStorage();

    // print('@#@#@#@#@#@#  @#@#@#@#@#@ ');
    // print(products[0].type);

    return SingleChildScrollView(
      child: Column(
        children: [
          // const Padding(
          //   padding: EdgeInsets.only(
          //       top: 8, bottom: 8, left: 20, right: 20),
          //   child: CustomBanner(),
          // ),

          //LatestWordPressCustomPost(),


          // TextButton(onPressed: () async {
          //
          //   var a = await processShippingMethods('66034');
          //
          // }, child: Text('test') ),


          Padding(
            padding: EdgeInsets.only(top: 24),
          ),
          const SlideBanners(),
          //const SlideScreen(),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Highlights(
              leftText: "In evidenza",
              rightText: "Vedi tutti",
              products: listaEvidenza(products ?? []) ?? [],
              isLoading: isLoading,
            ),
          ),
          const SizedBox(height: 10),
          Container(
              color: const Color.fromARGB(255, 153, 174, 182),
              //height: 240,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: CategoriesCarousel(),
              )
          ),
          //const BlackBanner(),
          const SizedBox(height: 10),
          // const Padding(
          //   padding: EdgeInsets.only(
          //       top: 8, bottom: 8, left: 20, right: 20),
          //   child: CustomBanner(),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Highlights(
              leftText: "Nuova linea With Love",
              rightText: "Vedi tutti",
              products: listaPerCategoria(products ?? [], 'with-love') ?? [],
              isLoading: isLoading,),

          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Highlights(
              leftText: "I vini più richiesti",
              rightText: "Vedi tutti",
              products: listMostRequested(products ?? []) ?? [],
              isLoading: isLoading,),
          )
        ],
      ),
    );
  }


  List<Product>? listaEvidenza(List<Product> products) {
    return products.where((p) => p.featured == true).toList();
  }

  List<Product>? listaPerCategoria(List<Product> products, String slug) {
    return products.where((p) {
      // Safely check if categories are not null before filtering
      var hasCat = p.categories?.where((element) => element.slug == slug) ?? [];
      return hasCat.isNotEmpty;
    }).toList();
  }

  List<Product>? listMostRequested(List<Product> products) {
    // Correcting the rating logic
    return products.where((p) {
      // Ensure that `average_rating` is not null and can be parsed as a double
      double rating = double.tryParse(p.average_rating ?? '0') ?? 0;
      return rating >= 4.0; // Changed the condition to filter ratings >= 4.0
    }).toList();
  }
}
