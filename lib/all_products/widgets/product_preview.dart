import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:torri_cantine_app/all_products/cubit/products_wishlisted_cubit.dart';
import 'package:torri_cantine_app/all_products/model/response/all_products_response.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/app/utilitys/tc_typography.dart';
import 'package:torri_cantine_app/cart/add_product_to_cart/add_product_to_cart_bloc.dart';
import 'package:torri_cantine_app/cart/cubit/cart_badge_cubit_cubit.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

import '../../product_detail/widgets/reviews.dart/model/response/reviews_response.dart';
import '../../product_detail/widgets/reviews.dart/reviews/reviews_bloc.dart';



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
  // ignore: non_constant_identifier_names
  String regular_price;
  String? description;
  // ignore: non_constant_identifier_names
  String? short_description;
  // ignore: non_constant_identifier_names
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
    // ignore: non_constant_identifier_names
    required this.regular_price,
    this.description,
    // ignore: non_constant_identifier_names
    this.short_description,
    // ignore: non_constant_identifier_names
    this.average_rating,
    this.weight,
    this.tags,
    this.categories,
    this.type
  });

  @override
  State<ProductPreview> createState() => _ProductPreviewState();
}

class _ProductPreviewState extends State<ProductPreview> {
  List<int> initialWishList = [];
  LocalStorage storage = LocalStorage();
  double? storedRating;
  // late ProductPointsCubit productPointsCubit;
  late int product_id;

  @override
  void initState() {
    // productPointsCubit = ProductPointsCubit();
    // productPointsCubit.getProductPoints(widget.id);
    product_id = widget.id;
    context.read<ReviewsBloc>().add(ReviewsEvent.fetch(product_id));
    super.initState();
  }

  // @override
  // void dispose() {
  //   productPointsCubit.close(); // Don't forget to close the cubit
  //   super.dispose();
  // }


  @override
  Widget build(BuildContext context) {
    String avg = (widget.average_rating!) == '0.00'
        ? '-'
        : double.parse(widget.average_rating ?? "-").toStringAsFixed(1);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
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
                              : Image.network(
                            widget.image ?? "",
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
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                                Radius.circular(10)),
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
                                BlocProvider.of<ProductsWishlistedCubit>(context).wishListed(widget.id);
                              },
                              child: Row(
                                children: [
                                  // If 'BIO' is not in tags, show the blue score container
                                  !containsBioTag(widget.tags ?? [])
                                      ? Container(
                                      width: 37,
                                      height: 27,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 13, 117, 161),
                                        borderRadius:
                                        BorderRadius.circular(10),
                                      ),
                                      child: Container(
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
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 9,
                                              fontWeight:
                                              FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      )
                                  )
                                      : const SizedBox(),
                                  const SizedBox(width: 64),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: (state.wishListProducts != null &&
                                        widget.id != null &&
                                        state.wishListProducts
                                            .contains(widget.id))
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
                            maxLines: 1,
                            '',
                            style: TCTypography.of(context).text_12.copyWith(color: Colors.grey),
                          ),
                        ),
                        widget.average_rating != '0.00'
                            ? Row(
                          children: [
                            const Icon(
                              Icons.star_border,
                              color: Color.fromARGB(
                                  255, 13, 117, 161),
                              size: 18,
                            ),

                            Text(
                              '$avg / 5',
                              style: TCTypography.of(context)
                                  .text_10
                                  .copyWith(
                                  color: const Color.fromARGB(
                                      255, 13, 117, 161),
                                  fontWeight: FontWeight.bold),
                            ),


                          ],
                        )
                            : const SizedBox(),
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
                      style: TCTypography.of(context)
                          .text_12_bold
                          .copyWith(
                          color:
                          const Color.fromARGB(255, 161, 29, 51),
                          fontWeight: FontWeight.bold),
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
                      child: ElevatedButton.icon(
                        onPressed: () {
                          if (widget.type == 'bundle') {
                            MainNavigation.push(context,
                                MainNavigation.productDetail(widget.id));
                          } else {
                            context.read<AddProductToCartBloc>().add(
                                AddProductToCartEvent.addProduct(
                                    widget.id, 1));
                            context
                                .read<CartBadgeCubitCubit>()
                                .addCartItem();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 161, 29, 51),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                        icon: const Icon(
                          Icons.shopping_cart_outlined,
                          size: 16,
                          color: Colors.white,
                        ),
                        label: Text(
                          widget.type == 'bundle' ? 'SCEGLI' : 'AGGIUNGI',
                          overflow: TextOverflow.visible,
                          style: TCTypography.of(context)
                              .text_12
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              )
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

    // Store the average rating in shared preferences

    return ratingAverage.toStringAsFixed(2).replaceAll('.', ','); // Return the average rating
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
