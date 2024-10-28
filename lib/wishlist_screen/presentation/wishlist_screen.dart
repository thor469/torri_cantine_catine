import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torri_cantine_app/all_products/all_products/all_products_bloc.dart';
import 'package:torri_cantine_app/all_products/cubit/products_wishlisted_cubit.dart';
import 'package:torri_cantine_app/all_products/model/response/all_products_response.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/bottom_bar.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/floating_action_button.dart';
import 'package:torri_cantine_app/app/common/sub_page_appbar.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';
import 'package:torri_cantine_app/wishlist_screen/presentation/wishlist_future.dart';
import 'package:torri_cantine_app/wishlist_screen/widgets/wishlist_items.dart';

class WishlistScreen extends StatefulWidget {
  final bool fromMenu;
  final bool fromAccount;
  const WishlistScreen({
    super.key,
    required this.fromMenu,
    required this.fromAccount,
  });



  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  LocalStorage wishList = LocalStorage();
  List<int> wl = [];
  late Future<List<Product?>> itemsList ;
  List<Product> itemsList2 = [] ;


  void removeItem(int productId) {

    BlocProvider.of<ProductsWishlistedCubit>(context).wishListed(productId);
    setState(() {
      wl.remove(productId);
      itemsList = doGetWlProducts() ;
      //itemsList2.remove(productId);
    });
    //print('item removed');

    //print('item removed 2');
  }

  Future<void> getWishListSaved() async {
    wl = await wishList.getWishList() ?? [];
    // wl.forEach((element) {
    //   context.read<AllProductsBloc>().add(AllProductsEvent.wishListProducts(ids:[element]));
    // });
    // wl.forEach((element) {
    //   context.read<ProductDetailBloc>().add(ProductDetailEvent.fetch(element));
    // });
  }

  @override
  void initState() {
    // Future.delayed(Duration.zero, getWishListSaved).then((value) {
    //   context
    //       .read<AllProductsBloc>()
    //       .add(const AllProductsEvent.wishListProducts(ids:wl2 ) );
    // });

    itemsList = doGetWlProducts();
    //itemsList = doGetWlProducts().then((value) { itemsList2 = itemsList as List<Product>; return value; }) ;

    // context
    //     .read<AllProductsBloc>()
    //     .add(const AllProductsEvent.wishListProducts(ids: [169997,169057]));

    super.initState();

  }



  @override
  Widget build(BuildContext context) {
    //print('wishBuild');
    // context
    //     .read<AllProductsBloc>()
    //     .add(const AllProductsEvent.wishListProducts(ids: [169057,169057]));



    Future.delayed(Duration.zero, getWishListSaved).then((value) {
      // context
      //     .read<AllProductsBloc>()
      //     .add(const AllProductsEvent.fetch());

    });
    int selectedIndex = 5;

    final GlobalKey<ScaffoldState> _key = GlobalKey();

    return PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          print('@#@#@#@ #@#@#@#@# @# @#@ #@# @# @# @# @ # #@ #@ @# pop invoked');
          MainNavigation.pop(context);
          //return;
        },
        child:Scaffold(
          backgroundColor: Color.fromARGB(255, 244, 244, 244),
          key: _key,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: SubPageAppbar(
              text: "WISHLIST",
              onTap: widget.fromMenu
                  ?  (){
                setState(() {
                  selectedIndex = 0;
                });
                MainNavigation.pop(context);

              }
              // ? () => MainNavigation.push(
              //       context,
              //       const MainNavigation.menu(),
              //     )
                  : widget.fromAccount
                  ? () => MainNavigation.push(
                context,
                const MainNavigation.account(false),
              )
                  : () => MainNavigation.push(
                context,
                const MainNavigation.home(),
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
          floatingActionButton: widget.fromMenu
              ?FloatingButton(): const SizedBox() ,
          bottomNavigationBar: widget.fromMenu
              ? BottomBanvigationMenu(
            scaffoldKey: _key,
            initialSelectedIndex: 5,
            context: context,
            //notifyParent: () => refresh(selectedindex),
          ) :const SizedBox(),
          body:
          FutureBuilder(
            future: this.itemsList,
            //future: doGetWlProducts(),
            builder: (context,snap) {
              // print('DARIO FUTURE');
              // print(snap.connectionState);
              // print(snap.data);

              if(snap.connectionState != ConnectionState.done) {
                return Center(
                    child: CircularProgressIndicator(
                      color: Color.fromARGB(255, 161, 29, 52),
                    ));
              }



              if(snap.hasData) {
                var model = snap.data!;

                if(model.length == 0) {
                  return Center(child: Text('Non ci sono elementi'));
                }

                //var model = itemsList2;
                return ListView.builder(
                  itemCount: model.length,
                  itemBuilder: (context, index) {

                    //print('WISHLIST LOADED');
                    //print(wishListProd(model ?? []));

                    //getWishlistProducts(wl);

                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: WishlistItems(
                        onRemove: () => removeItem(
                          model[index]!.id,
                        ),
                        productId: model[index]!.id,
                        image: model[index]!.images!.first.src,
                        description:
                        model[index]!.name ?? "",
                        price: double.parse(
                            model[index]!.price ?? ""),
                        regularPrice: double.parse(
                            model[index]!.regular_price ?? ""),
                      ),
                    );
                  },
                );

              }

              return Center(child: Text('Non ci sono elementi'));
            },
          ),

          // BlocBuilder<AllProductsBloc, AllProductsState>(
          //   builder: (context, state) => state.maybeWhen(
          //     initial: () => const Center(
          //         child: CircularProgressIndicator(
          //       color: Color.fromARGB(255, 161, 29, 52),
          //     )),
          //     loading: () => const Center(
          //       child: CircularProgressIndicator(
          //         color: Color.fromARGB(255, 161, 29, 52),
          //       ),
          //     ),
          //     loaded: (model, page) => wishListProd(model ?? []).length>0?ListView.builder(
          //       itemCount: wishListProd(model ?? []).length,
          //       itemBuilder: (context, index) {
          //
          //         print('WISHLIST LOADED');
          //         //print(wishListProd(model ?? []));
          //         print(wishListProd(model ?? []).length);
          //         //getWishlistProducts(wl);
          //
          //         return Padding(
          //           padding: const EdgeInsets.symmetric(horizontal: 15),
          //           child: WishlistItems(
          //             onRemove: () => removeItem(
          //               wishListProd(model ?? [])[index].id,
          //             ),
          //             productId: wishListProd(model ?? [])[index].id,
          //             image: wishListProd(model ?? [])[index].images!.first.src,
          //             description:
          //                 wishListProd(model ?? [])[index].name ?? "",
          //             price: double.parse(
          //                 wishListProd(model ?? [])[index].price ?? ""),
          //             regularPrice: double.parse(
          //                 wishListProd(model ?? [])[index].regular_price ?? ""),
          //           ),
          //         );
          //       },
          //     ):Center(child: Text('Non ci sono elementi')),
          //     orElse: () => const SizedBox(),
          //   ),
          // ),


        )

    );


  }

  List<Product> wishListProd(List<Product> products) {
    // print('wishListProd');
    // print(products.length);
    // return products;
    //

    return products.where((p) => wl.contains(p.id) ).toList();
  }


  Future<List<Product?>> getWishlistProducts(List<int> wl) async {
    List<Product?> wishListProducts = [];
    wl.forEach((wishItem) {

    });
    //print('getWishlistProducts');
    context
        .read<AllProductsBloc>()
    //.add(AllProductsEvent.fetch(page: productsPage + 1));
        .add(AllProductsEvent.wishListProducts(ids: wl));

    return wishListProducts;
  }



}
