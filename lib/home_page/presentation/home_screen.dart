import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:torri_cantine_app/all_products/all_products/all_products_bloc.dart';
import 'package:torri_cantine_app/all_products/model/response/all_products_response.dart';
import 'package:torri_cantine_app/app/cache_manager/cache_manager.dart';
import 'package:torri_cantine_app/app/common/tc_appbar.dart';
import 'package:torri_cantine_app/app/dependency_injection/dependency_factory.dart';
import 'package:torri_cantine_app/app/routing/auto_route/app_router.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/categories/categories/categories_bloc.dart';
import 'package:torri_cantine_app/categories/model/response/categories_response.dart';
import 'package:torri_cantine_app/categories/presentation/categories_screen.dart';
import 'package:torri_cantine_app/home_page/widgets/home_page_body.dart';
import 'package:torri_cantine_app/promotions/presentation/promotions_screen.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../all_products/presentation/products_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  int? storageSelectedIndex;
  LocalStorage storage = LocalStorage();

  @override
  void initState() {
    // context.read<AllProductsBloc>().add(const AllProductsEvent.fetch(page: 1));
    readTabState();
    super.initState();
  }



  void readTabState  () async {
    storageSelectedIndex = await storage.getTabState() ;
    if(storageSelectedIndex!=0) {
      setState(() {
        selectedIndex = storageSelectedIndex!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
      },
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 244, 244, 244),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: SizedBox(
            height: 70,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 0;
                      });
                      storage.setTabState(0);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: AppBarItem(
                        text: 'HOME',
                        isActive: selectedIndex == 0,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 1;
                      });
                      storage.setTabState(1);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: AppBarItem(
                        text: 'PRODOTTI',
                        isActive: selectedIndex == 1,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 2;
                      });
                      storage.setTabState(2);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: AppBarItem(
                        text: 'PROMOZIONI',
                        isActive: selectedIndex == 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            BlocBuilder<AllProductsBloc, AllProductsState>(
              builder: (context, state) => state.maybeWhen(
                orElse: () => const SizedBox(),
                loading: (products, page) => GestureDetector(
                  child: SvgPicture.asset(
                    "assets/Search.svg",
                    width: 22,
                    height: 22,
                  ),
                  onTap: () {
                    showSearch(
                      context: context,
                      delegate: CustomSearch(cxt: context),
                    );
                  },
                ),
                loaded: (products, page) => GestureDetector(
                  child: SvgPicture.asset(
                    "assets/Search.svg",
                    width: 22,
                    height: 22,
                  ),
                  onTap: () {
                    showSearch(
                      context: context,
                      delegate: CustomSearch(cxt: context),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(width: 15),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                child: Align(
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 161, 29, 51),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: SvgPicture.asset(
                        "assets/chat-bianco.svg",
                      ),
                    ),
                  ),
                ),
                onTap: () async {

                  if (!await launchUrl(Uri.parse('https://wa.me/+393382028846'))) {
                    throw Exception('Could not launch url');
                  }

                },
              ),
            ),
          ],
          flexibleSpace: Container(),
        ),
        body: tabPage(selectedIndex),
      ),
    );

  }

  Widget tabPage(int i) {
    switch (i) {
      case 0:
        return const HomePageBody();
      case 1:
        return ProductsScreen( fromMenu: false,
          showAppBar: false,);
      case 2:
        return const PromotionsScreen();
      default:
        return const HomePageBody();
    }
  }
}







class CustomSearch extends SearchDelegate {
  CustomSearch({String hintText = "Cerca", required this.cxt})
      : super(
    searchFieldLabel: hintText,
    keyboardType: TextInputType.text,
    textInputAction: TextInputAction.search,
  );

  final BuildContext cxt;
  final PagingController<int, Product> pagingController = PagingController(firstPageKey: 1);
  Timer? _debounce;
  List<Product> cachedResults = [];

  @override
  void dispose() {
    pagingController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  void _onQueryChanged(String query) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      if (query.isNotEmpty && query.length % 2 == 0) {
        final localResults = _filterCachedResults(query);

        if (localResults.isNotEmpty) {
          pagingController.itemList = localResults;
        } else {
          pagingController.refresh();
        }
      } else if (query.isNotEmpty) {
        pagingController.refresh();
      }
    });
  }

  List<Product> _filterCachedResults(String query) {
    return cachedResults
        .where((product) => product.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  Future<void> _fetchPage(int pageKey, String query) async {
    try {
      final response = await cxt.read<AllProductsBloc>().newSearchProducts(pageKey, query);
      if (response != null && response.isNotEmpty) {
        cachedResults = response;
        final isLastPage = response.length < 10;
        if (isLastPage) {
          pagingController.appendLastPage(response);
        } else {
          pagingController.appendPage(response, pageKey + 1);
        }
      } else {
        pagingController.appendLastPage([]);
      }
    } catch (error) {
      pagingController.error = error;
    }
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
          cachedResults.clear();
          pagingController.refresh();
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    _onQueryChanged(query);
    if (pagingController.hasListeners == false) {
      pagingController.addPageRequestListener((pageKey) {
        _fetchPage(pageKey, query);
      });
    }

    return _buildPagedListView();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    _onQueryChanged(query);
    if (pagingController.hasListeners == false) {
      pagingController.addPageRequestListener((pageKey) {
        _fetchPage(pageKey, query);
      });
    }

    return _buildPagedListView();
  }

  Widget _buildPagedListView() {
    return Container(
      color: const Color.fromARGB(255, 244, 244, 244),
      child: PagedListView<int, Product>(
        pagingController: pagingController,
        builderDelegate: PagedChildBuilderDelegate<Product>(
          firstPageProgressIndicatorBuilder: (cnxt){
           return   const Center(
             child: CircularProgressIndicator(
               color: Color.fromARGB(255, 161, 29, 51),
             ),
           );
          },
            newPageProgressIndicatorBuilder:(cnxt){
              return   const Center(
                child: CircularProgressIndicator(
                  color: Color.fromARGB(255, 161, 29, 51),
                ),
              );
            },
          itemBuilder: (context, product, index) {
            final previewImage = product.images.isNotEmpty ? product.images[0].src : '';
            final cacheKey = DynamicCacheManager().generateKey(previewImage);

            return GestureDetector(
              onTap: () {
                context.router.push(ProductDetailRoute(id: product.id));

                // MainNavigation.push(context, MainNavigation.productDetail(product.id));
              },
              child: ListTile(
                leading: CachedNetworkImage(
                  imageUrl: previewImage,
                  cacheKey: cacheKey,
                  imageBuilder: (context, imageProvider) => CircleAvatar(
                    backgroundImage: imageProvider,
                  ),
                  placeholder: (context, url) => const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  cacheManager: DynamicCacheManager(),
                ),
                title: Text(product.name),
              ),
            );
          },
          noItemsFoundIndicatorBuilder: (context) => const Center(
            child: Text("Nessun prodotto trovato."),
          ),
        ),
      ),
    );
  }
}
