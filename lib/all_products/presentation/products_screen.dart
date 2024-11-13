import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:torri_cantine_app/all_products/all_products/all_products_bloc.dart';
import 'package:torri_cantine_app/all_products/model/response/all_products_response.dart';
import 'package:torri_cantine_app/all_products/widgets/categories_carousel.dart';
import 'package:torri_cantine_app/all_products/widgets/filter_drawer.dart';
import 'package:torri_cantine_app/all_products/widgets/order_drawer.dart';
import 'package:torri_cantine_app/all_products/widgets/product_preview.dart';
import 'package:torri_cantine_app/all_products/widgets/products_grid.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/account_bottom.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/cart_bottom_item.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/menu_bottom_item.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/wishlist_bottom_item.dart';
import 'package:torri_cantine_app/app/common/sub_page_appbar.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';
import '../../app/utilitys/fixedFloatingPositions.dart';

class Products extends StatefulWidget {
  double? minPrice;
  double? maxPrice;
  bool? orderAsc;
  bool? orderDesc;
  bool? orderPop;
  bool? orderDate;
  bool? orderRating;
  Map<String, bool>? categoriesMap;
  Map<String, bool>? tagsMap;
  String? categoriesIdMap;
  String? tagsIdMap;
  final bool showAppBar;
  final bool fromMenu;

  Products({
    super.key,
    this.minPrice,
    this.maxPrice,
    this.orderAsc,
    this.orderDesc,
    this.orderDate,
    this.orderPop,
    this.orderRating,
    this.categoriesMap,
    this.tagsMap,
    this.categoriesIdMap,
    this.tagsIdMap,
    required this.showAppBar,
    required this.fromMenu,
  });

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  LocalStorage storage = LocalStorage();
  int selectedIndex = 0;
  int setDrawer = 0;
  int productsPage = 1;
  bool endList = false;
  late ScrollController scrollController;
  List<Product> mainListProducts = <Product>[];
  var filterMaps = null;
  var priceFilterMaps = null;
  var loadMore = true;
  PersistentBottomSheetController? bottomSheetController;
  final PagingController<int, Product> _pagingController = PagingController(firstPageKey: 1);


  @override
  void initState() {
    scrollController = ScrollController();
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey, null, null);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey,  String? order, String? orderBy) async {
    try {
      AllProductsResponse? response = await context.read<AllProductsBloc>().fetch(pageKey, 10, orderBy, order);
      if (response != null && response.products!.isNotEmpty) {
        final isLastPage = response.products!.length < 10;
        if (isLastPage) {
          _pagingController.appendLastPage(response.products!);
        } else {
          final nextPageKey = pageKey + 1;
          _pagingController.appendPage(response.products!, nextPageKey);
        }
      } else {
        _pagingController.appendLastPage([]);
      }
    } catch (error) {
      print(error);
      _pagingController.error = error;
    }
  }

  static _dockedFabLocation(context) {
    if (MediaQuery.of(context).viewInsets.bottom != 0) {
      return FixedCenterDockedFabLocation(
          bottomDistance: MediaQuery.of(context).viewInsets.bottom, context: context);
    } else {
      return FloatingActionButtonLocation.miniCenterDocked;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return PopScope(
            canPop: false,
            onPopInvoked: (didPop) {
              print(
                  '@#@#@#@ #@#@#@#@# @# @#@ #@# @# @# @# @ # #@ #@ @# pop invoked');
              MainNavigation.pop(context);
              //return;
            },
            child: Scaffold(
              backgroundColor: Color.fromARGB(255, 244, 244, 244),
              appBar: PreferredSize(
                  preferredSize: Size.fromHeight(
                      MediaQuery.of(context).size.height * 0.07),
                  child: widget.showAppBar
                      ? SubPageAppbar(
                          onTap: () => MainNavigation.pop(context),
                          text: "TUTTI I PRODOTTI",
                        )
                      : const SizedBox()),
              bottomNavigationBar: widget.showAppBar
                  ? Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        color: Colors.white,
                      ),
                      height: 70,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = 3;
                              });
                              MainNavigation.push(
                                context,
                                const MainNavigation.menu(),
                              );
                            },
                            child: MenuBottomItem(
                              text: 'Menu',
                              icon: Icons.menu,
                              isActive: selectedIndex == 3,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = 4;
                              });
                              MainNavigation.push(
                                context,
                                const MainNavigation.account(false),
                              );
                            },
                            child: AccountBottomItem(
                              text: 'Account',
                              icon: Icons.person_outlined,
                              isActive: selectedIndex == 4,
                            ),
                          ),
                          // SizedBox(
                          //   width: MediaQuery.of(context).size.width * 0.20,
                          // ),

                          Container(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: GestureDetector(
                                onTap: () => MainNavigation.push(
                                      context,
                                      const MainNavigation.home(),
                                    ),
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(width: 48, height: 48),
                                      Positioned(
                                        top: -11.0,
                                        child: CircleAvatar(
                                          radius: 30,
                                          backgroundColor: Colors.transparent,
                                          child: Container(
                                            padding: EdgeInsets.only(top: 0),
                                            //padding: const EdgeInsets.all(6),
                                            child: Image.asset(
                                              "assets/torri.png",
                                              width: 48,
                                              height: 48,
                                            ),
                                          ),
                                        ),
                                      )
                                    ])),
                          ),

                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = 5;
                              });
                              MainNavigation.push(
                                context,
                                const MainNavigation.wishList(true, false),
                              );
                            },
                            child: WishListBottomItem(
                              text: 'Wishlist',
                              icon: Icons.favorite_outline,
                              isActive: selectedIndex == 5,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = 6;
                              });
                              MainNavigation.push(
                                context,
                                const MainNavigation.cart(
                                    true, false, false, true),
                              );
                            },
                            child: CartBottomItem(
                              text: 'Carrello',
                              icon: Icons.shopping_cart_outlined,
                              isActive: selectedIndex == 6,
                            ),
                          )
                        ],
                      ),
                    )
                  : null,
              body: Builder(builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              blurRadius: 10.0,
                              spreadRadius: 0,
                              offset: Offset(0, 0),
                            ),
                          ]),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BlocBuilder<AllProductsBloc, AllProductsState>(
                                builder: (context, state) {
                                  return state.maybeWhen(
                                      orElse: (){return const SizedBox();},
                                      loading: (model, pageNumber){return const Center(
                                          child: Padding(padding: EdgeInsets.only(left: 40.0),
                                              child: SizedBox(height: 18, width: 18,
                                                  child: CircularProgressIndicator(color: Color.fromARGB(255, 161, 29, 51),
                                                  )
                                              )
                                          )
                                      );},
                                      loaded: (model, pageNumber){
                                        return GestureDetector(
                                            child: Padding(
                                              padding:
                                              const EdgeInsets.only(left: 40.0),
                                              child: widget.orderAsc == true
                                                  ? Row(
                                                children: [
                                                  Text(
                                                    "PREZZO:BASSO-ALTO",
                                                    style:
                                                    TCTypography.of(context)
                                                        .text_14_bold
                                                        .copyWith(
                                                      color: const Color
                                                          .fromARGB(
                                                          255,
                                                          113,
                                                          112,
                                                          112),
                                                    ),
                                                  ),
                                                  const Icon(
                                                    Icons
                                                        .keyboard_arrow_down_outlined,
                                                    color: Color.fromARGB(
                                                        255, 113, 112, 112),
                                                  )
                                                ],
                                              )
                                                  : widget.orderDesc == true
                                                  ? Row(
                                                children: [
                                                  Text("PREZZO:ALTO-BASSO",
                                                      style:
                                                      TCTypography.of(
                                                          context)
                                                          .text_14_bold
                                                          .copyWith(
                                                        color: const Color
                                                            .fromARGB(
                                                            255,
                                                            113,
                                                            112,
                                                            112),
                                                      )),
                                                  const Icon(
                                                    Icons
                                                        .keyboard_arrow_down_outlined,
                                                    color: Color.fromARGB(
                                                        255, 113, 112, 112),
                                                  )
                                                ],
                                              )
                                                  : widget.orderDate == true
                                                  ? Row(children: [
                                                Text(
                                                  "DATA:PIÙ RECENTI",
                                                  style:
                                                  TCTypography.of(
                                                      context)
                                                      .text_14_bold
                                                      .copyWith(
                                                    color: const Color
                                                        .fromARGB(
                                                        255,
                                                        113,
                                                        112,
                                                        112),
                                                  ),
                                                ),
                                                const Icon(
                                                  Icons
                                                      .keyboard_arrow_down_outlined,
                                                  color: Color.fromARGB(
                                                      255,
                                                      113,
                                                      112,
                                                      112),
                                                )
                                              ])
                                                  : widget.orderRating == true
                                                  ? Row(
                                                children: [
                                                  Text(
                                                      "RATING MIGLIORE",
                                                      style: TCTypography.of(
                                                          context)
                                                          .text_14_bold
                                                          .copyWith(
                                                        color: const Color
                                                            .fromARGB(
                                                            255,
                                                            113,
                                                            112,
                                                            112),
                                                      )),
                                                  const Icon(
                                                    Icons
                                                        .keyboard_arrow_down_outlined,
                                                    color: Color
                                                        .fromARGB(
                                                        255,
                                                        113,
                                                        112,
                                                        112),
                                                  )
                                                ],
                                              )
                                                  : widget.orderPop ==
                                                  true
                                                  ? Row(
                                                children: [
                                                  Text(
                                                    "I PIÙ VENDUTI",
                                                    style: TCTypography.of(
                                                        context)
                                                        .text_14_bold
                                                        .copyWith(
                                                      color: const Color
                                                          .fromARGB(
                                                          255,
                                                          113,
                                                          112,
                                                          112),
                                                    ),
                                                  )
                                                ],
                                              )
                                                  : Text(
                                                "ORDINA",
                                                style: TCTypography.of(
                                                    context)
                                                    .text_14_bold
                                                    .copyWith(
                                                    color: const Color
                                                        .fromARGB(
                                                        255,
                                                        113,
                                                        112,
                                                        112)),
                                              ),
                                            ),
                                            onTap: () {
                                              bottomSheetController =
                                                  Scaffold.of(context)
                                                      .showBottomSheet(
                                                          (context) => setDrawer == 1
                                                          ? OrderDrawer(
                                                        categoriesMap: widget
                                                            .categoriesMap,
                                                        tagsMap:
                                                        widget.tagsMap,
                                                        onClose: () {
                                                          bottomSheetController
                                                              ?.close();
                                                        },
                                                       onFilterSelected: _setFilter,
                                                       onFetchPage: _fetchPage,
                                                       pagingController: _pagingController
                                                      )
                                                          : FilterDrawer());
                                              setState(() {
                                                setDrawer = 1;
                                              });
                                            });
                                      });
                                }
                            ),

                            BlocBuilder<AllProductsBloc, AllProductsState>(
                            builder: (context, state) {
                              return state.maybeWhen(
                                  orElse: () {
                                    return const SizedBox();
                                  },
                                  loading: (model, pageNumber) {
                                    return const Center(
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                right: 40.0),
                                            child: SizedBox(
                                                height: 18, width: 18,
                                                child: CircularProgressIndicator(
                                                  color: Color.fromARGB(
                                                      255, 161, 29, 51),
                                                )
                                            )
                                        )
                                    );
                                  },
                                  loaded: (model, pageNumber) {
                                    return GestureDetector(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              right: 40.0),
                                          child: Text(
                                            "FILTRA",
                                            style: TCTypography
                                                .of(context)
                                                .text_14_bold
                                                .copyWith(
                                              color: const Color.fromARGB(
                                                  255, 113, 112, 112),
                                            ),
                                          ),
                                        ),
                                        onTap:() {
                                            bottomSheetController =
                                                Scaffold.of(context)
                                                    .showBottomSheet(
                                                        (context) =>
                                                    setDrawer == 1
                                                        ? OrderDrawer(
                                                      categoriesMap: widget
                                                          .categoriesMap,
                                                      tagsMap:
                                                      widget.tagsMap,
                                                      onClose: () {
                                                        bottomSheetController
                                                            ?.close();
                                                      },
                                                      onFilterSelected: _setFilter,
                                                    )
                                                        : FilterDrawer());
                                            setState(() {
                                              setDrawer = 0;
                                            });
                                        });
                                  }
                              );
                            })]),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child:  CategoriesCarousel(),
                    ),
                    Expanded(
                      child: RefreshIndicator(
                      color: const Color.fromARGB(255, 161, 29, 51),
                        displacement: 20,
                        onRefresh: () async {
                          _pagingController.refresh();
                          _fetchPage(1, null, null);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: PagedGridView<int, Product>(
                            pagingController: _pagingController,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.50,
                              crossAxisSpacing: 15,
                              mainAxisSpacing: 30,
                            ),
                            builderDelegate: PagedChildBuilderDelegate<Product>(
                              firstPageProgressIndicatorBuilder :  (context) => const Center(
                                child:  CircularProgressIndicator(
                                  color: Color.fromARGB(255, 161, 29, 51),
                                ),
                              ),
                              newPageProgressIndicatorBuilder: (context) => const Center(
                                child: CircularProgressIndicator(
                                  color: Color.fromARGB(255, 161, 29, 51),
                                ),
                              ),
                              itemBuilder: (context, product, index) => ProductPreview(
                                id: product.id ?? 0,  // Default to 0 if id is null
                                image: product.images.isEmpty
                                    ? ""  // Default empty string if no image
                                    : product.images.first.src ?? "",  // Null check for src
                                name: product.name ?? 'Unknown Product',  // Default name
                                price: product.price ?? "0",  // Default price if null
                                regular_price: product.regular_price ?? "0",  // Default regular price
                                description: product.description ?? 'No Description Available',  // Default description
                                short_description: product.short_description ?? 'No Short Description',  // Default short description
                                average_rating: product.average_rating ?? "0",  // Default rating
                                tags: product.tags ?? [],  // Default to empty list
                                categories: product.categories ?? [],  // Default empty list
                                type: product.type ?? 'Unknown',
                                productPoint: product.points ?? 0,),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                );
              }),
              drawer: setDrawer == 1
                  ? OrderDrawer(
                      categoriesMap: widget.categoriesMap,
                      tagsMap: widget.tagsMap,
                    )
                  : FilterDrawer(),
            ));
      },
    );
  }

  List<Product> listProductsFiltered(
    List<Product> products,
    double minPrice,
    double maxPrice,
    Map<String, bool> categoriesMap,
    Map<String, bool> tagsMap,
  ) {
    final tagsListFiltered = tagsMap.keys.toList();
    final categoriesListFiltered = categoriesMap.keys.toList();
    var productFiltered = products
        .where((product) =>
            double.parse(product.price! == "" ? "0.0" : product.price!) >=
                minPrice &&
            double.parse(product.price! == "" ? "0.0" : product.price!) <=
                maxPrice)
        .toList();

    if (categoriesListFiltered.isNotEmpty) {
      var tempList = productFiltered
          .where((product) => product.categories!
              .any((element) => categoriesListFiltered.contains(element.name)))
          .toList();
      productFiltered = tempList;
    }

    if (tagsListFiltered.isNotEmpty) {
      var tempList = productFiltered
          .where((product) => product.tags!
              .any((element) => tagsListFiltered.contains(element.name)))
          .toList();
      productFiltered = tempList;
    }
    return productFiltered;
  }

  List<Product> orderAsc(List<Product> products) {
    List<Product> sortedProducts = List.from(products);
    sortedProducts.sort((a, b) => double.parse(a.price == "" ? "0.0" : a.price!)
        .compareTo(double.parse(b.price == "" ? "0.0" : b.price!)));
    return sortedProducts;
  }

  List<Product> orderDesc(List<Product> products) {
    List<Product> sortedProducts = List.from(products);
    sortedProducts.sort((a, b) => double.parse(b.price == "" ? "0.0" : b.price!)
        .compareTo(double.parse(a.price == "" ? "0.0" : a.price!)));
    return sortedProducts;
  }

  List<Product> orderRating(List<Product> products) {
    List<Product> sortedProducts = List.from(products);
    sortedProducts.sort((a, b) => double.parse(
            b.average_rating == "" ? "0.0" : b.average_rating!)
        .compareTo(
            double.parse(a.average_rating == "" ? "0.0" : a.average_rating!)));
    return sortedProducts;
  }

  List<Product> orderDate(List<Product> products) {
    List<Product> sortedProducts = List.from(products);
    sortedProducts.sort((a, b) => DateTime.parse(
            b.date_created == "" ? "0.0" : b.date_created!)
        .compareTo(
            DateTime.parse(a.date_created == "" ? "0.0" : a.date_created!)));
    return sortedProducts;
  }

  String categoriesToString(Map<String, String> categoriesIdMap) {
    String categoriesId = "";

    for (var element in categoriesIdMap.values) {
      if (categoriesId == "") {
        categoriesId = element;
      } else {
        categoriesId = "$categoriesId,$element";
      }
    }
    return categoriesId;
  }

  String tagsToString(Map<String, String> tagsIdMap) {
    String tagsId = "";

    for (var element in tagsIdMap.values) {
      if (tagsId == "") {
        tagsId = element;
      } else {
        tagsId = "$tagsId,$element";
      }
    }
    return tagsId;
  }
  void _setFilter(bool? asc, bool? desc, bool? pop, bool? date, bool? rating) {
    setState(() {
      widget.orderAsc = asc;
      widget.orderDesc = desc;
      widget.orderPop = pop;
      widget.orderDate = date;
      widget.orderRating = rating;
    });
  }
}
