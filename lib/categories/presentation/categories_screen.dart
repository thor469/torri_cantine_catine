import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:torri_cantine_app/app/cache_manager/cache_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/floating_action_button.dart';
import 'package:torri_cantine_app/app/common/sub_page_appbar.dart';
import 'package:torri_cantine_app/app/routing/auto_route/app_router.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/app/utilitys/tc_typography.dart';
import 'package:torri_cantine_app/categories/categories/categories_bloc.dart';
import 'package:torri_cantine_app/categories/model/response/categories_response.dart';
import 'package:torri_cantine_app/product_detail/model/response/product_detail_response.dart';

import '../../app/common/bottom_bar_items/bottom_bar.dart';

@RoutePage()
class CategoriesScreen extends StatefulWidget {
  final bool showAppBar;
  final bool fromMenu;

  const CategoriesScreen({
    super.key,
    this.showAppBar = false,
    required this.fromMenu,
  });

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final PagingController<int, ProductCategories> _pagingController = PagingController(firstPageKey: 1);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      CategoriesResponse? response = await context.read<CategoriesBloc>().getOther(pageKey, 10);
      if (response != null && response.categories!.isNotEmpty) {
        final isLastPage = response.categories!.length < 10;
        if (isLastPage) {
          _pagingController.appendLastPage(response.categories!);
        } else {
          final nextPageKey = pageKey + 1;
          _pagingController.appendPage(response.categories!, nextPageKey);
        }
      } else {
        _pagingController.appendLastPage([]);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 244, 244, 244),
      child: SafeArea(
        top: false ,
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 244, 244, 244),
          appBar: widget.showAppBar
              ? SubPageAppbar(
            text: "TUTTE LE CATEGORIE",
            onTap:  () => context.router.popForced(),
          )
              : null,
          // floatingActionButton: const FloatingButton(),
          // floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
          // bottomNavigationBar: BottomBanvigationMenu(
          //   scaffoldKey: GlobalKey(),
          //   initialSelectedIndex: 0,
          //   context: context,
          // ),
          body: PagedGridView<int, ProductCategories>(
            pagingController: _pagingController,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
            ),
            builderDelegate: PagedChildBuilderDelegate<ProductCategories>(
              firstPageProgressIndicatorBuilder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: Color.fromARGB(255, 161, 29, 51),
                ),
              ),
              newPageProgressIndicatorBuilder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: Color.fromARGB(255, 161, 29, 51),
                ),
              ),
              itemBuilder: (context, category, index) => GestureDetector(
                onTap: () {
                  context.router.push(CategoriesDetailRoute(id: category.id));
                  // MainNavigation.push(
                  //   context,
                  //   MainNavigation.categoriesDetail(category.id),
                  // );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 2,
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          child: category.image?.src != null && category.image?.src is String
                              ? CachedNetworkImage(
                            imageUrl: category.image?.src ?? "",
                            cacheKey: DynamicCacheManager().generateKey(category.image!.src),
                            placeholder: (context, url) => const Center(
                              child: CircularProgressIndicator(
                                color: Color.fromARGB(255, 161, 29, 51),
                              ),
                            ),
                            errorWidget: (context, url, error) => const Icon(Icons.error),
                            cacheManager: DynamicCacheManager(),
                            fit: BoxFit.cover,
                          )
                              : const SizedBox.shrink(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            category.name ?? "",
                            style: TCTypography.of(context).text_14_bold,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}