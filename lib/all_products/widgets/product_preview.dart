import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:torri_cantine_app/all_products/cubit/products_wishlisted_cubit.dart';
import 'package:torri_cantine_app/all_products/model/response/all_products_response.dart';
import 'package:torri_cantine_app/app/cache_manager/cache_manager.dart';
import 'package:torri_cantine_app/app/routing/auto_route/app_router.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/app/utilitys/tc_typography.dart';
import 'package:torri_cantine_app/cart/add_product_to_cart/add_product_to_cart_bloc.dart';
import 'package:torri_cantine_app/cart/cart/cart_bloc.dart';
import 'package:torri_cantine_app/cart/cubit/cart_badge_cubit_cubit.dart';
import 'package:torri_cantine_app/cart/model/response/cart_response.dart';
import 'package:torri_cantine_app/product_detail/widgets/reviews.dart/model/response/reviews_response.dart';
import 'package:torri_cantine_app/product_detail/widgets/reviews.dart/reviews/reviews_bloc.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';


class ProductPreview extends StatefulWidget {
  final String? image;
  final bool isLight;
  final String name;
  final bool isToogle;
  final bool isRated;
  final int id;
  final String? weight;
  final int productPoint;
  String? price;
  String regular_price;
  String? description;
  String? short_description;
  String? average_rating;
  List<ProductTags>? tags;
  List<ProductCategories>? categories;
  String? type;
  final bool isPurchasableSable;

  ProductPreview({
    super.key,
    required this.id,
    this.image,
    required this.name,
    this.isLight = true,
    this.isToogle = true,
    this.isRated = true,
    this.price,
    required this.productPoint,
    required this.regular_price,
    this.description,
    this.short_description,
    this.average_rating,
    this.weight,
    this.tags,
    this.categories,
    this.type, required this.isPurchasableSable,
  });

  @override
  State<ProductPreview> createState() => _ProductPreviewState();
}

class _ProductPreviewState extends State<ProductPreview> {
  List<int> initialWishList = [];
  LocalStorage storage = LocalStorage();
  double? storedRating;
  bool isFirstLoad = true;
  bool isLoading = false;
  String value = "";
  // late ProductPointsCubit productPointsCubit;
  late int product_id;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (mounted) {
        await getReview();
      }
    });
  }

  Future<void> getReview() async {
    try {
      if (!mounted) return;
      var model = await context.read<ReviewsBloc>().getReview(widget.id);
      if (model?.reviews != null && (model?.reviews?.isNotEmpty ?? false)) {
        double sum = model?.reviews?.fold(0, (previousValue, review) => (previousValue ?? 0) + (review.rating ?? 0),) ?? 0;
        double averageRating = sum / (model?.reviews?.length ?? 1);
        if (mounted) {
          setState(() {
            value = averageRating.toStringAsFixed(1);
          });
        }
      }
    } catch (e) {
      debugPrint('Errore in getReview: $e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: () {
          context.router.push(ProductDetailRoute(id: widget.id));
          // MainNavigation.push(context, MainNavigation.productDetail(widget.id));
        },
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 4.3,
                        width: MediaQuery.of(context).size.height / 3,
                        child: widget.image == null
                            ? const SizedBox()
                            : CachedNetworkImage(
                          imageUrl: widget.image!,
                          cacheKey: DynamicCacheManager().generateKey(widget.image!),
                          placeholder: (context, url) => const Center(
                            child: CircularProgressIndicator(color:Color.fromARGB(255, 161, 29, 51) ,),
                          ),
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                          cacheManager: DynamicCacheManager(),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      containsBioTag(widget.tags ?? [])
                          ? Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Container(
                          width: 48,
                          height: 27,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/Bio-label.svg"),
                              const SizedBox(width: 2),
                              Text(
                                "BIO",
                                style: TCTypography.of(context).text_10,
                              ),
                            ],
                          ),
                        ),
                      )
                          : const SizedBox(),
                      BlocBuilder<ProductsWishlistedCubit, ProductsWishlistedState>(
                        builder: (context, state) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              !containsBioTag(widget.tags ?? [])
                                  ? Container(
                                    width: 40,
                                    height: 27,
                                    decoration: BoxDecoration(
                                      color: const Color
                                          .fromARGB(
                                          255, 13, 117, 161),
                                      borderRadius:
                                      BorderRadius
                                          .circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "+ ${widget.productPoint} pt",
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 9,
                                          fontWeight:
                                          FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  )
                                  : const SizedBox(),
                              GestureDetector(
                                onTap: () {
                                  context.read<ProductsWishlistedCubit>().wishListed(widget.id);
                                },
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: (state.wishListProducts != null && widget.id != null && state.wishListProducts.contains(widget.id))
                                      ? const Icon(
                                    Icons.favorite,
                                    size: 20,
                                    color: Color.fromARGB(
                                        255, 161, 29, 51),
                                  )
                                      : const Icon(
                                    Icons.favorite_border,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                  widget.isRated
                      ? Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            maxLines: 1,
                            '',
                            style: TCTypography.of(context).text_12.copyWith(color: Colors.grey),
                          ),
                        ),
                        Row(children: [
                          const Icon(
                            Icons.star_border,
                            color: Color.fromARGB(
                                255, 13, 117, 161),
                            size: 18,),
                          Text(
                            '$value/ 5',
                            style: TCTypography.of(context).text_10.copyWith(
                                color: const Color.fromARGB(255, 13, 117, 161),
                                fontWeight: FontWeight.bold),
                          )
                        ]
                        )
                      ],
                    ),
                  )
                      : const SizedBox(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: widget.name == ""
                      ? const Text("Descrizione non disponibile", maxLines: 2)
                      : Text(widget.name, maxLines: 2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: widget.regular_price != widget.price
                    ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "€ ${double.tryParse(widget.regular_price)?.toStringAsFixed(2).replaceAll('.', ',')} ",
                          style: TCTypography.of(context)
                              .text_14
                              .copyWith(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "€ ${double.tryParse(widget.price!)!.toStringAsFixed(2).replaceAll('.', ',')} ",
                          style: TCTypography.of(context).text_14_bold,
                        ),
                      ],
                    ),
                    Text(
                      "${percentage(widget.regular_price, widget.price ?? "")}%",
                      style: TCTypography.of(context).text_12_bold.copyWith(color: const Color.fromARGB(255, 161, 29, 51), fontWeight: FontWeight.bold),
                    ),
                  ],
                )
                    : Text(
                  "€ ${(widget.price)?.replaceAll('.', ',')}",
                  style: TCTypography.of(context).text_14_bold,
                ),
              ),
              widget.isToogle
                  ? SizedBox(
                  height: MediaQuery.of(context).size.height / 21,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        height: 24,
                        width: MediaQuery.of(context).size.width,
                        child: BlocListener<AddProductToCartBloc, AddProductToCartState>(
                          listener: (BuildContext context, AddProductToCartState state) {
                            state.maybeWhen(
                                addedProduct: (_) {
                                  setState(() {isLoading = false;});
                                  WidgetsBinding.instance.addPostFrameCallback((_) async {
                                    CartResponse? cartItem = await context.read<CartBloc>().fetchItemCart();
                                    context.read<CartBadgeCubitCubit>().addCartItem(qty: cartItem?.items.length ?? 0, isFromCart: cartItem != null && cartItem.items.length != 0);
                                  });
                                },
                                error: () {
                                  setState(() {isLoading = false;});
                                },
                                orElse: () {}
                            );
                          },
                          child: ElevatedButton.icon(
                            onPressed: () {
                              if(widget.isPurchasableSable){
                                if (widget.type == 'bundle') {
                                  context.router.push(ProductDetailRoute(id: widget.id));

                                  // MainNavigation.push(context, MainNavigation.productDetail(widget.id));
                                } else {
                                  if (!isLoading) {
                                    setState(() {isLoading = true;});
                                    context.read<AddProductToCartBloc>().add(AddProductToCartEvent.addProduct(widget.id, 1));
                                  }
                                }
                              }
                            },
                            style: widget.isPurchasableSable ? ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 161, 29, 51),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ) : ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                            iconAlignment: isLoading? IconAlignment.end : IconAlignment.start,
                            icon: isLoading
                                ? const SizedBox(
                              width: 16,
                              height: 16,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2,
                              ),
                            )
                                : const Icon(
                              Icons.shopping_cart_outlined,
                              size: 16,
                              color: Colors.white,
                            ),
                            label: !isLoading
                                ? Text(
                              widget.type == 'bundle' ? 'SCEGLI' : 'AGGIUNGI',
                              style: TCTypography.of(context).text_12.copyWith(color: Colors.white),
                            )
                                : const Text(""),
                          ),
                        ),
                      ),
                    ),
                  ))
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }

  Object avgRating(List<Review> reviews) {
    if (reviews.isEmpty) {
      return 0.0; // Return 0.0 if no reviews are available
    }

    // Filter out any null ratings before calculating
    int sumRating = reviews
        .where((review) => review.rating != null) // Ensure ratings are non-null
        .map((review) => review.rating!) // Use non-null ratings
        .reduce((a, b) => a + b); // Sum up the ratings

    // Count the number of valid ratings
    int validRatingCount = reviews.where((review) => review.rating != null).length;

    // Calculate the average rating
    double ratingAverage = sumRating / validRatingCount; // Calculate the average out of valid ratings


    return ratingAverage.toStringAsFixed(2).replaceAll('.', ',');
  }

  int percentage(String fullPrice, String halfPrice) {
    return fullPrice == ""
        ? 0
        : ((double.parse(fullPrice) - double.parse(halfPrice)) * 100) ~/
        double.parse(fullPrice);
  }

  bool containsBioTag(List<ProductTags> tags) {
    return tags.where((tag) => tag.name == "bio").toList().isNotEmpty;
  }
}

