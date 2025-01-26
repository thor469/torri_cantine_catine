import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:torri_cantine_app/account/account/account_bloc.dart';
import 'package:torri_cantine_app/account/presentation/account.dart';
import 'package:torri_cantine_app/all_products/cubit/products_wishlisted_cubit.dart';
import 'package:torri_cantine_app/app/cache_manager/cache_manager.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/bottom_bar.dart';
import 'package:torri_cantine_app/app/common/primary_button.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:torri_cantine_app/app/routing/auto_route/app_router.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/cart/add_product_to_cart/add_product_to_cart_bloc.dart';
import 'package:torri_cantine_app/cart/add_bundle_to_cart/add_bundle_to_cart_bloc.dart';
import 'package:torri_cantine_app/cart/cart/cart_bloc.dart';
import 'package:torri_cantine_app/cart/cubit/cart_badge_cubit_cubit.dart';
import 'package:torri_cantine_app/cart/model/response/cart_response.dart';
import 'package:torri_cantine_app/cart/presentation/cart_screen.dart';
import 'package:torri_cantine_app/categories/presentation/categories_screen.dart';
import 'package:torri_cantine_app/home_page/presentation/home_screen.dart';
import 'package:torri_cantine_app/main_screen/presentation/main_screen.dart';
import 'package:torri_cantine_app/menu_screen/menu_screen.dart';
import 'package:torri_cantine_app/product_detail/product_detail/product_detail_bloc.dart';
import 'package:torri_cantine_app/product_detail/widgets/characheter_list.dart';
import 'package:torri_cantine_app/product_detail/widgets/descriptionList.dart';
import 'package:torri_cantine_app/product_detail/widgets/reviews.dart/presentation/review_list.dart';
import 'package:torri_cantine_app/promotions/presentation/promotions_screen.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';
import 'package:torri_cantine_app/wishlist_screen/presentation/wishlist_screen.dart';

import '../../app/common/bottom_bar_items/floating_action_button.dart';
import '../model/response/product_detail_response.dart';
import '../widgets/reviews.dart/reviews/reviews_bloc.dart';

@RoutePage()
class ProductDetailScreen extends StatefulWidget {
  final int id;
  const ProductDetailScreen({super.key, required this.id});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  LocalStorage storage = LocalStorage();
  double? storedRating;
  int selectedIndex = 0;
  int initialCartQty = 1;
  TextEditingController cartController = TextEditingController();
  bool isLoading = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      String email = await storage.getUserEmail() ?? "";
      if (mounted) context.read<AccountBloc>().add(AccountEvent.fetch(email));
    });
    cartController = TextEditingController(text: initialCartQty.toString());

    context.read<ProductDetailBloc>().add(ProductDetailEvent.fetch(widget.id));
    _loadStoredRating();
    context.read<ReviewsBloc>().add(ReviewsEvent.fetch(widget.id));
    super.initState();
  }


  final GlobalKey<ScaffoldState> _key = GlobalKey();

  Future<void> _loadStoredRating() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      storedRating = prefs.getDouble('avg_rating') ?? 0.0; // Fetch rating or use default
    });
  }

  @override
  Widget build(BuildContext context) {
  // print('widget.id');
  // print(widget.id);

    return Scaffold(
      backgroundColor: Colors.white,
      key: _key,
      drawer: const Drawer(
        child: MenuScreen(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: const FloatingButton(),
      bottomNavigationBar: BottomBanvigationMenu(
        scaffoldKey: _key,
        initialSelectedIndex: 0,
        context: context,
        //notifyParent: () => refresh(selectedindex),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          leading: IconButton(
            onPressed: () {
              context.router.popForced();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 110, 116, 119),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
      ),
      body: BlocBuilder<ProductDetailBloc, ProductDetailState>(
        builder: (context, state) => state.maybeWhen(
          initial: () => const Center(
            child: CircularProgressIndicator(
              color: Color.fromARGB(255, 161, 29, 52),
            ),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(
              color: Color.fromARGB(255, 161, 29, 52),
            ),
          ),
          loaded: (state) {

            // var tada= state.meta_data!.where((element) => element.key.startsWith('_wine'));
            // print('DARIO bundles');
            // print(state.bundled_items);
            //var bundleItems = state.bundled_items!.sort(a,b)=>a.menu_order < b.menu_order;
            List<TextEditingController> controllers = [];
            if(state.bundled_items!=null) {
              for (int i = 0; i < state.bundled_items!.length; i++) {
                TextEditingController controller = TextEditingController();
                controllers.add(controller);

                //setState(() {
                controllers[i].text = '${state.bundled_items![i].quantity_min??0}';
                //});
              }
            }


            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.9,
                    child:  CachedNetworkImage(
                      imageUrl: state.images!.first.src,
                      cacheKey: DynamicCacheManager().generateKey(state.images!.first.src),
                      placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(
                          color: Color.fromARGB(255, 161, 29, 52),
                        ),
                      ),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                      cacheManager: DynamicCacheManager(),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 17),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        state.name,
                        textAlign: TextAlign.left,
                        style: TCTypography.of(context).text_18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: state.regular_price != state.price
                        ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "€ ${double.tryParse(state.regular_price ?? "0")!.toStringAsFixed(2).replaceAll('.', ',')} ",
                                  style: TCTypography.of(context)
                                      .text_22
                                      .copyWith(
                                      decoration:
                                      TextDecoration.lineThrough),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 7),
                                  child: Text("€ ${double.tryParse(state.price!)!.toStringAsFixed(2).replaceAll('.', ',')??''}",
                                      style: TCTypography.of(context)
                                          .text_22_bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    state.price!.isNotEmpty
                                        ? ("-${percentage(state.regular_price ?? "", state.price ?? "")}%")
                                        : "",
                                    style: TCTypography.of(context)
                                        .text_22_bold
                                        .copyWith(
                                      color: const Color.fromARGB(
                                          255, 161, 29, 52),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            (state.average_rating!)=='0.00'?const SizedBox():Row(
                              children: [
                                const Icon(
                                  Icons.star_border_outlined,
                                  color: Color.fromARGB(255, 13, 117, 161),
                                ),

                                BlocBuilder<ReviewsBloc, ReviewsState>(
                                  builder: (context, state) => state.maybeWhen(
                                    orElse: () => const Center(
                                      child: SizedBox(
                                        width: 20,
                                        height: 20,
                                        child:  CircularProgressIndicator(
                                          color: Color.fromARGB(255, 161, 29, 51),
                                        ),
                                      ),
                                    ),
                                    loaded: (model) => Text(
                                      "${avgRating(model?.reviews ?? []).toStringAsFixed(1)} / 5", // Use the rating from Bloc
                                      style: TCTypography.of(context)
                                          .text_22_bold
                                          .copyWith(
                                        color: const Color.fromARGB(255, 13, 117, 161),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                        : Row(
                      children: [
                        Text("€ ${(state.regular_price ?? "0").replaceAll('.', ',')}",
                            style: TCTypography.of(context).text_18_bold),
                        Expanded(child: Container()),
                        (state.average_rating!)=='0.00'?const SizedBox():const Icon(
                          Icons.star_border_outlined,
                          color: Color.fromARGB(255, 13, 117, 161),
                        ),
                        (state.average_rating!)=='0.00'?const SizedBox():Text(
                          "${double.parse(state.average_rating!).toStringAsFixed(1)}/5",
                          style: TCTypography.of(context)
                              .text_14_bold
                              .copyWith(
                            color:
                            const Color.fromARGB(255, 13, 117, 161),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(25, 20, 25, 12),
                    child: Divider(
                      thickness: 1.3,
                    ),
                  ),
                  //BUNDLES
                  Visibility(
                    visible: state.type =='bundle',
                    child: BundleItemsList(bundles: state.bundled_items!, minSize: state.bundle_min_size!, maxSize: state.bundle_max_size!,productId:widget.id, initialCartQty: initialCartQty, contx: context),
                  ),

                  Visibility(
                    visible: state.type!='bundle',
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 23),
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width /2.8,
                            height: 35,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.start,

                              children: [
                                Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: const Color.fromARGB(255, 99, 103, 106)),
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)
                                      )
                                  ),
                                  child:
                                  IconButton(
                                    padding: EdgeInsets.zero,
                                    constraints: const BoxConstraints(),
                                    onPressed: () {
                                      setState(
                                            () {
                                          if (initialCartQty > 1) {
                                            initialCartQty--;
                                            cartController = TextEditingController(text: initialCartQty.toString());
                                          }
                                        },
                                      );
                                    },
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Color.fromARGB(255, 99, 103, 106),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 0),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      border: Border.symmetric(
                                          horizontal: BorderSide(
                                              color: Color.fromARGB(255, 99, 103, 106)
                                          )
                                      ),
                                    ),
                                    width: 45,
                                    height: 35,
                                    child: Container(
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.only(left: 2.5,bottom: 9),
                                      child: TextField(
                                        style: const TextStyle(fontStyle: FontStyle.normal, fontSize: 18),
                                        textAlign: TextAlign.center,
                                        decoration: const InputDecoration(
                                            border: InputBorder.none),
                                        readOnly: true,
                                        controller: cartController,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color:
                                          const Color.fromARGB(255, 99, 103, 106)),
                                      borderRadius: const BorderRadius.only( topRight: Radius.circular(5), bottomRight: Radius.circular(5) )
                                  ),
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    constraints: const BoxConstraints(),
                                    onPressed: () {
                                      setState(() {
                                        initialCartQty++;
                                        cartController = TextEditingController(
                                            text: initialCartQty.toString());
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.add,
                                      color: Color.fromARGB(255, 99, 103, 106),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          BlocListener<AddProductToCartBloc, AddProductToCartState>(
                            listener: (BuildContext context, AddProductToCartState state) {
                              state.maybeWhen(
                                  addedProduct: (_) {
                                    setState(() {
                                      isLoading = false;
                                    });
                                    context.read<CartBadgeCubitCubit>().addCartItem(context);
                                  },
                                  error: () {
                                    setState(() {isLoading = false;});
                                  },
                                  orElse: () {}
                              );
                            },
                            child: Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child:
                                PrimaryButton(
                                  disabled: !(state.purchasable ?? false),
                                  text: isLoading ? "" : "AGGIUNGI",
                                  ontap: () {
                                    if(!isLoading){
                                      setState(() {
                                        isLoading = true;
                                      });
                                      context.read<AddProductToCartBloc>().add(AddProductToCartEvent.addProduct(widget.id, initialCartQty??1));
                                    }
                                  },
                                  icon:
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child:
                                    isLoading ?
                                    Center(
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        child: CircularProgressIndicator(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ) :
                                    SvgPicture.asset("assets/Menu-cart.svg", color: Colors.white,
                                        width: 25,
                                        height: 25),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          BlocBuilder<ProductsWishlistedCubit, ProductsWishlistedState>(
                            builder: (context, state) {
                              return GestureDetector(
                                onTap: () {
                                  context.read<ProductsWishlistedCubit>().wishListed(widget.id);
                                },
                                child: state.wishListProducts.contains(widget.id)
                                    ? const Icon(
                                  Icons.favorite,
                                  size: 25,
                                  color: Color.fromARGB(255, 161, 29, 52),
                                )
                                    : const Icon(
                                  Icons.favorite_border,
                                  size: 25,
                                  color: Color.fromARGB(255, 99, 103, 106),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(25, 20, 25, 16),
                    child: Divider(
                      thickness: 1.3,
                    ),
                  ),
                  const CharList(),
                  const CharListSecondary(),
                  const DescriptionList(),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(25, 16, 25, 16),
                    child: Divider(
                      thickness: 1.3,
                    ),
                  ),
                  ReviewsList(
                    product_id: widget.id,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(25, 16, 25, 16),
                    child: Divider(
                      thickness: 1.3,
                    ),
                  ),
                ],
              ),
            );
          },
          error: () => const SizedBox(),
          orElse: () => const SizedBox(),
        ),
      ),
    );
  }
}

int percentage(String fullPrice, String halfPrice) {
  return ((double.parse(fullPrice) - double.parse(halfPrice)) * 100) ~/
      double.parse(fullPrice);
}

Widget selectPage(int i) {
  switch (i) {
    case 0 : return const HomeScreen();
    case 1 :
      return const CategoriesScreen(
        showAppBar: true,
        fromMenu: false,
      );
    case 2:
      return const PromotionsScreen();
    case 3:
      return const MenuScreen();
    case 4:
      return const AccountScreen(
        fromSecondPage: false,
      );
    case 5:
      return const WishlistScreen(
        fromAccount: false,
        fromMenu: false,
      );
    case 6:
      return const CartScreen(
        showAppBar: true,
        fromMenu: false,
        fromCompleteOrder: false,
        fromHomePage: false,
      );
    default:
      return const MainScreen();
  }
}

class BundleItemsList extends StatefulWidget {
  final List<BundledItems> bundles ;
  final int minSize;
  final int maxSize;
  final int productId;
  final int initialCartQty;
  final BuildContext contx;

  const BundleItemsList( {super.key, required this.bundles, required this.minSize, required this.maxSize, required this.productId, required this.initialCartQty, required this.contx} );

  @override
  State<BundleItemsList> createState() => _BundleItemsListState();
}

class _BundleItemsListState extends State<BundleItemsList> {
  List<TextEditingController> controllers = [];
  int selectedBundleItems = 0;
  bool isLoading = false;

  @override
  void initState(){
      for (int i = 0; i < widget.bundles.length; i++) {
        TextEditingController controller = TextEditingController();
        controllers.add(controller);
        controllers[i].text = '${widget.bundles[i].quantity_default??0}';
        selectedBundleItems += widget.bundles[i].quantity_default;
      }
      super.initState();
  }

  @override
  Widget build(BuildContext context) {

    double containerHeight = (80 * widget.bundles!.length).toDouble();

   return PopScope(
     canPop: true,
     child: Container(
       padding: const EdgeInsets.symmetric(horizontal: 20),
       child: Column(
          mainAxisSize: MainAxisSize.max,
         children: [
           SizedBox(
             height: containerHeight,
             child: ListView.builder(
               physics: const NeverScrollableScrollPhysics(),
               itemCount: widget.bundles.length,
               itemBuilder: (context,index){
                 var currentItem = widget.bundles[index];
                 return Container(
                   padding: const EdgeInsets.symmetric(vertical: 12),
                   height: 80,
                   child: Row(
                     children: [
                       Expanded(
                           child: Container(
                               padding: const EdgeInsets.symmetric(horizontal: 8),
                               child: Text(currentItem.title, style: TCTypography.of(context).text_14_bold.copyWith())
                           )
                       ),
                       Container(
                         padding:const EdgeInsets.symmetric(vertical: 8),
                         child: Row(
                           crossAxisAlignment: CrossAxisAlignment.stretch,
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Container(
                               height: 35,
                               width: 35,
                               decoration: BoxDecoration(
                                   border: Border.all(color: const Color.fromARGB(255, 99, 103, 106)),
                                   borderRadius: const BorderRadius.only( topLeft: Radius.circular(5), bottomLeft: Radius.circular(5) )
                               ),
                               child:
                               IconButton(
                                 padding: EdgeInsets.zero,
                                 constraints: const BoxConstraints(),
                                 disabledColor: Colors.black12,
                                 onPressed: (int.parse(controllers[index].text)==currentItem.quantity_min || (currentItem.stock_status).toLowerCase()!='in_stock')?null:() {
                                   setState(() {
                                     controllers[index].text = (int.parse(controllers[index].text)-1).toString();
                                     selectedBundleItems -=1;
                                   });
                                 },
                                 icon: const Icon(Icons.remove,),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 0),
                               child: Container(
                                 decoration: const BoxDecoration(
                                   border: Border.symmetric(
                                       horizontal: BorderSide(
                                           color: Color.fromARGB(255, 99, 103, 106)
                                       )
                                   ),
                                 ),
                                 width: 45,
                                 height: 35,
                                 child: Padding(
                                   padding: const EdgeInsets.only(left: 2.5,bottom: 9),
                                   child: TextField(
                                     style: TCTypography.of(context).text_18,
                                     textAlign: TextAlign.center,
                                     textAlignVertical: TextAlignVertical.center,
                                     decoration: const InputDecoration(
                                         border: InputBorder.none,
                                     ),
                                     readOnly: true,
                                     controller: controllers[index],
                                   ),
                                 ),
                               ),
                             ),
                             Container(
                               height: 35,
                               width: 35,
                               decoration: BoxDecoration(
                                   border: Border.all(color: const Color.fromARGB(255, 99, 103, 106)),
                                   borderRadius: const BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5) )
                               ),
                               child: IconButton(
                                 padding: EdgeInsets.zero,
                                 constraints: const BoxConstraints(),
                                 disabledColor: Colors.black12,
                                 onPressed: (int.parse(controllers[index].text)==currentItem.quantity_max || selectedBundleItems==widget.maxSize || (currentItem.stock_status).toLowerCase()!='in_stock')?null:() {
                                   setState(() {
                                     controllers[index].text = (int.parse(controllers[index].text)+1).toString();
                                     selectedBundleItems +=1;
                                   });
                                 },
                                 icon: const Icon(Icons.add,),
                               ),
                             ),
                           ],
                         ),
                       )
                     ],
                   ),
                 );
               },
             ),
           ),

           BlocBuilder<AddBundleToCartBloc, AddBundleToCartState>(
             builder: (BuildContext context, AddBundleToCartState state) {
               return state.maybeWhen(
                   addedProduct: () {
                     if(isLoading){
                       context.read<CartBadgeCubitCubit>().addCartItem(context);
                       isLoading = false;
                     }
                     return Padding(
                       padding: const EdgeInsets.only(left: 23, right:23, top:23),
                       child: Row(
                         children: [
                           Expanded(
                             child: Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 10),
                               child: PrimaryButton(
                                 text:  isLoading ? "" : "AGGIUNGI",
                                 disabled: !(selectedBundleItems>=widget.minSize && selectedBundleItems<=widget.maxSize),
                                 ontap: () {
                                   if(isLoading){
                                     return;
                                   }
                                   isLoading = true;
                                   int ind = 0;
                                   List<dynamic> bundleConf = [];
                                   String bundleCartUrl = '?add-to-cart=${widget.productId}&quantity=1';
                                   for (ind=0; ind<controllers.length; ind++) {
                                     bundleCartUrl += '&bundle_quantity_${widget.bundles[ind].bundled_item_id}=${controllers[ind].text}';
                                     if(int.tryParse(controllers[ind].text)!>=0) {
                                       bundleConf.add({
                                         "bundled_item_id": widget.bundles[ind].bundled_item_id,
                                         "product_id": widget.bundles[ind].product_id,
                                         "quantity": int.tryParse(controllers[ind].text)
                                       });
                                     }
                                   }
                                   var bundlePost = {
                                     "line_items": [
                                       {
                                         "product_id": widget.productId,
                                         "quantity": 1,
                                         "bundle_configuration": bundleConf
                                       }
                                     ]
                                   };
                                   if(selectedBundleItems>=widget.minSize && selectedBundleItems<=widget.maxSize) {
                                     context.read<AddBundleToCartBloc>().add(AddBundleToCartEvent.addBundle(widget.productId,bundlePost,bundleCartUrl, widget.initialCartQty??1));
                                   }
                                 },
                                 icon: isLoading ? const Center(
                                   child: SizedBox(
                                     width: 25,
                                     height: 25,
                                     child: CircularProgressIndicator(
                                       color: Colors.white,
                                     ),
                                   ),
                                 ):
                                 Padding(
                                   padding: const EdgeInsets.only(right: 5),
                                   child: SvgPicture.asset("assets/Menu-cart.svg", color: Colors.white, width: 25, height: 25),
                                 ),
                               ),
                             ),
                           ),
                           BlocBuilder<ProductsWishlistedCubit, ProductsWishlistedState>(
                             builder: (context, state) {
                               return GestureDetector(
                                 onTap: () {
                                   context.read<ProductsWishlistedCubit>().wishListed(widget.productId);
                                 },
                                 child: state.wishListProducts.contains(widget.productId)
                                     ? const Icon(
                                   Icons.favorite,
                                   size: 25,
                                   color: Color.fromARGB(255, 161, 29, 52),
                                 )
                                     : const Icon(
                                   Icons.favorite_border,
                                   size: 25,
                                   color: Color.fromARGB(255, 99, 103, 106),
                                 ),
                               );
                             },
                           ),
                         ],
                       ),
                     );
                   },
                   loading: () {
                     isLoading = true;
                     return Padding(
                       padding: const EdgeInsets.only(left: 23, right:23, top:23),
                       child: Row(
                         children: [
                           Expanded(
                             child: Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 10),
                               child: PrimaryButton(
                                 text:  "",
                                 disabled: !(selectedBundleItems>=widget.minSize && selectedBundleItems<=widget.maxSize),
                                 ontap: () {
                                 },
                                 icon: const Center(
                                   child: SizedBox(
                                     width: 25,
                                     height: 25,
                                     child: CircularProgressIndicator(
                                       color: Colors.white,
                                     ),
                                   ),
                                 )
                               ),
                             ),
                           ),
                           BlocBuilder<ProductsWishlistedCubit, ProductsWishlistedState>(
                             builder: (context, state) {
                               return GestureDetector(
                                 onTap: () {
                                   context.read<ProductsWishlistedCubit>().wishListed(widget.productId);
                                 },
                                 child: state.wishListProducts.contains(widget.productId)
                                     ? const Icon(
                                   Icons.favorite,
                                   size: 25,
                                   color: Color.fromARGB(255, 161, 29, 52),
                                 )
                                     : const Icon(
                                   Icons.favorite_border,
                                   size: 25,
                                   color: Color.fromARGB(255, 99, 103, 106),
                                 ),
                               );
                             },
                           ),
                         ],
                       ),
                     );
                   },
                   error: () {
                     if(isLoading){
                       context.read<CartBadgeCubitCubit>().addCartItem(context);
                       isLoading = false;
                     }
                     return Padding(
                       padding: const EdgeInsets.only(left: 23, right:23, top:23),
                       child: Row(
                         children: [
                           Expanded(
                             child: Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 10),
                               child: PrimaryButton(
                                 text:  isLoading ? "" : "AGGIUNGI",
                                 disabled: !(selectedBundleItems>=widget.minSize && selectedBundleItems<=widget.maxSize),
                                 ontap: () {
                                   if(isLoading){
                                     return;
                                   }
                                   isLoading = true;
                                   int ind = 0;
                                   List<dynamic> bundleConf = [];
                                   String bundleCartUrl = '?add-to-cart=${widget.productId}&quantity=1';
                                   for (ind=0; ind<controllers.length; ind++) {
                                     bundleCartUrl += '&bundle_quantity_${widget.bundles[ind].bundled_item_id}=${controllers[ind].text}';
                                     if(int.tryParse(controllers[ind].text)!>=0) {
                                       bundleConf.add({
                                         "bundled_item_id": widget.bundles[ind].bundled_item_id,
                                         "product_id": widget.bundles[ind].product_id,
                                         "quantity": int.tryParse(controllers[ind].text)
                                       });
                                     }
                                   }
                                   var bundlePost = {
                                     "line_items": [
                                       {
                                         "product_id": widget.productId,
                                         "quantity": 1,
                                         "bundle_configuration": bundleConf
                                       }
                                     ]
                                   };
                                   if(selectedBundleItems>=widget.minSize && selectedBundleItems<=widget.maxSize) {
                                     context.read<AddBundleToCartBloc>().add(AddBundleToCartEvent.addBundle(widget.productId,bundlePost,bundleCartUrl, widget.initialCartQty??1));
                                   }
                                 },
                                 icon: isLoading ? const Center(
                                   child: SizedBox(
                                     width: 25,
                                     height: 25,
                                     child: CircularProgressIndicator(
                                       color: Colors.white,
                                     ),
                                   ),
                                 ):
                                 Padding(
                                   padding: const EdgeInsets.only(right: 5),
                                   child: SvgPicture.asset("assets/Menu-cart.svg", color: Colors.white, width: 25, height: 25),
                                 ),
                               ),
                             ),
                           ),
                           BlocBuilder<ProductsWishlistedCubit, ProductsWishlistedState>(
                             builder: (context, state) {
                               return GestureDetector(
                                 onTap: () {
                                   context.read<ProductsWishlistedCubit>().wishListed(widget.productId);
                                 },
                                 child: state.wishListProducts.contains(widget.productId)
                                     ? const Icon(
                                   Icons.favorite,
                                   size: 25,
                                   color: Color.fromARGB(255, 161, 29, 52),
                                 )
                                     : const Icon(
                                   Icons.favorite_border,
                                   size: 25,
                                   color: Color.fromARGB(255, 99, 103, 106),
                                 ),
                               );
                             },
                           ),
                         ],
                       ),
                     );
                   },
                   orElse: () {
                   if(isLoading){
                   context.read<CartBadgeCubitCubit>().addCartItem(context);
               isLoading = false;
             }
                           return  Padding(
                              padding: const EdgeInsets.only(
                                  left: 23, right: 23, top: 23),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: PrimaryButton(
                                        text: isLoading ? "" : "AGGIUNGI",
                                        disabled: !(selectedBundleItems >=
                                                widget.minSize &&
                                            selectedBundleItems <=
                                                widget.maxSize),
                                        ontap: () {
                                          if (isLoading) {
                                            return;
                                          }
                                          isLoading = true;
                                          int ind = 0;
                                          List<dynamic> bundleConf = [];
                                          String bundleCartUrl =
                                              '?add-to-cart=${widget.productId}&quantity=1';
                                          for (ind = 0;
                                              ind < controllers.length;
                                              ind++) {
                                            bundleCartUrl +=
                                                '&bundle_quantity_${widget.bundles[ind].bundled_item_id}=${controllers[ind].text}';
                                            if (int.tryParse(
                                                    controllers[ind].text)! >=
                                                0) {
                                              bundleConf.add({
                                                "bundled_item_id": widget
                                                    .bundles[ind]
                                                    .bundled_item_id,
                                                "product_id": widget
                                                    .bundles[ind].product_id,
                                                "quantity": int.tryParse(
                                                    controllers[ind].text)
                                              });
                                            }
                                          }
                                          var bundlePost = {
                                            "line_items": [
                                              {
                                                "product_id": widget.productId,
                                                "quantity": 1,
                                                "bundle_configuration":
                                                    bundleConf
                                              }
                                            ]
                                          };
                                          if (selectedBundleItems >=
                                                  widget.minSize &&
                                              selectedBundleItems <=
                                                  widget.maxSize) {
                                            context
                                                .read<AddBundleToCartBloc>()
                                                .add(AddBundleToCartEvent
                                                    .addBundle(
                                                        widget.productId,
                                                        bundlePost,
                                                        bundleCartUrl,
                                                        widget.initialCartQty ??
                                                            1));
                                          }
                                        },
                                        icon: isLoading
                                            ? const Center(
                                                child: SizedBox(
                                                  width: 25,
                                                  height: 25,
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              )
                                            : Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5),
                                                child: SvgPicture.asset(
                                                    "assets/Menu-cart.svg",
                                                    color: Colors.white,
                                                    width: 25,
                                                    height: 25),
                                              ),
                                      ),
                                    ),
                                  ),
                                  BlocBuilder<ProductsWishlistedCubit,
                                      ProductsWishlistedState>(
                                    builder: (context, state) {
                                      return GestureDetector(
                                        onTap: () {
                                          context
                                              .read<ProductsWishlistedCubit>()
                                              .wishListed(widget.productId);
                                        },
                                        child: state.wishListProducts
                                                .contains(widget.productId)
                                            ? const Icon(
                                                Icons.favorite,
                                                size: 25,
                                                color: Color.fromARGB(
                                                    255, 161, 29, 52),
                                              )
                                            : const Icon(
                                                Icons.favorite_border,
                                                size: 25,
                                                color: Color.fromARGB(
                                                    255, 99, 103, 106),
                                              ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            );
                          });
             },
           )
         ],
       )


     ),
   );
  }


  }


