import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:torri_cantine_app/all_products/cubit/products_wishlisted_cubit.dart';
import 'package:torri_cantine_app/all_products/model/response/all_products_response.dart';
import 'package:torri_cantine_app/app/cache_manager/cache_manager.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/app/utilitys/tc_typography.dart';
import 'package:torri_cantine_app/cart/add_product_to_cart/add_product_to_cart_bloc.dart';
import 'package:torri_cantine_app/cart/cubit/cart_badge_cubit_cubit.dart';
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
    this.type,
  });

  @override
  State<ProductPreview> createState() => _ProductPreviewState();
}

class _ProductPreviewState extends State<ProductPreview> {
  LocalStorage storage = LocalStorage();
  double? storedRating;
  bool isFirstLoad = true;
  bool isLoading = false;
  String value = "";

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await getReview();
    });
    super.initState();
  }

  Future<void> getReview() async {
    var model = await context.read<ReviewsBloc>().getReview(widget.id);
    if (model?.reviews != null && (model?.reviews?.isNotEmpty ?? false)) {
      double sum = model?.reviews?.fold(
        0,
            (previousValue, review) => (previousValue ?? 0) + (review.rating ?? 0),
      ) ??
          0;
      double averageRating = sum / (model?.reviews?.length ?? 1);
      setState(() {
        value = averageRating.toStringAsFixed(1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: () {
          MainNavigation.push(context, MainNavigation.productDetail(widget.id));
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
                      Container(
                        child: SizedBox(
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
                          return Positioned(
                            top: 5,
                            right: 15,
                            child: GestureDetector(
                              onTap: () {
                                context.read<ProductsWishlistedCubit>().wishListed(widget.id);
                              },
                              child: Row(
                                children: [
                                  !containsBioTag(widget.tags ?? [])
                                      ? Container(
                                    width: 37,
                                    height: 27,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 13, 117, 161),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "+ ${widget.productPoint} pt",
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  )
                                      : const SizedBox(),
                                  const SizedBox(width: 64),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: state.wishListProducts.contains(widget.id)
                                        ? const Icon(
                                      Icons.favorite,
                                      size: 20,
                                      color: Color.fromARGB(255, 161, 29, 51),
                                    )
                                        : const Icon(
                                      Icons.favorite_border,
                                      size: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
                            widget.name,
                            maxLines: 1,
                            style: TCTypography.of(context).text_12.copyWith(color: Colors.grey),
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star_border,
                              color: Color.fromARGB(255, 13, 117, 161),
                              size: 18,
                            ),
                            Text(
                              '$value / 5',
                              style: TCTypography.of(context).text_10.copyWith(
                                  color: const Color.fromARGB(255, 13, 117, 161),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                      : const SizedBox(),
                ],
              ),
              _buildPriceSection(context),
              _buildAddToCartButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPriceSection(BuildContext context) {
    return Padding(
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
                    .copyWith(color: Colors.grey, decoration: TextDecoration.lineThrough),
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
            style: TCTypography.of(context)
                .text_12_bold
                .copyWith(color: const Color.fromARGB(255, 161, 29, 51), fontWeight: FontWeight.bold),
          ),
        ],
      )
          : Text(
        "€ ${(widget.price)?.replaceAll('.', ',')}",
        style: TCTypography.of(context).text_14_bold,
      ),
    );
  }

  Widget _buildAddToCartButton(BuildContext context) {
    return widget.isToogle
        ? Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
      child: BlocListener<AddProductToCartBloc, AddProductToCartState>(
        listener: (context, state) {
          state.maybeWhen(
            addedProduct: (_) {
              setState(() {
                isLoading = false;
              });
              context.read<CartBadgeCubitCubit>().addCartItem();
            },
            error: () {
              setState(() {
                isLoading = false;
              });
            },
            orElse: () {},
          );
        },
        child: ElevatedButton.icon(
          onPressed: () {
            if (!isLoading) {
              setState(() {
                isLoading = true;
              });
              context.read<AddProductToCartBloc>().add(AddProductToCartEvent.addProduct(widget.id, 1));
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 161, 29, 51),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
          ),
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
            'AGGIUNGI',
            style: TCTypography.of(context).text_12.copyWith(color: Colors.white),
          )
              : const Text(""),
        ),
      ),
    )
        : const SizedBox();
  }

  int percentage(String fullPrice, String halfPrice) {
    return fullPrice == ""
        ? 0
        : ((double.parse(fullPrice) - double.parse(halfPrice)) * 100) ~/ double.parse(fullPrice);
  }

  bool containsBioTag(List<ProductTags> tags) {
    return tags.where((tag) => tag.name == "bio").isNotEmpty;
  }
}