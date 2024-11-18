import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torri_cantine_app/app/utilitys/tc_typography.dart';
import 'package:torri_cantine_app/cart/cubit/cart_badge_cubit_cubit.dart';

class BlackCarousel extends StatelessWidget {
  final String imageUrl;
  final bool isLight;
  final String name;
  final bool isToogle;
  final bool isRated;
  final bool isPriced;

  const BlackCarousel({
    super.key,
    required this.imageUrl,
    required this.name,
    this.isLight = true,
    this.isToogle = true,
    this.isRated = true,
    this.isPriced = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Azione quando si clicca sul prodotto
      },
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Card(
                  elevation: 1.0,
                  child: SizedBox(
                    height: 105,
                    width: 118,
                    child: CachedNetworkImage(
                      imageUrl: imageUrl,
                      cacheKey: "carousel_${imageUrl.hashCode}", // Chiave dinamica
                      placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 12),
                  child: Container(
                    width: 48,
                    height: 27,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 50, 92),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.9),
                          spreadRadius: 3,
                          blurRadius: 9,
                          offset: const Offset(5, 5),
                        ),
                      ],
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          " +69 pt",
                          style: TCTypography.of(context)
                              .text_10
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            isRated
                ? Padding(
              padding: const EdgeInsets.only(left: 10, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      name,
                      style: TCTypography.of(context)
                          .text_12
                          .copyWith(color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star_border,
                          color: Color.fromARGB(255, 13, 117, 161),
                          size: 18,
                        ),
                        Text(
                          ' 4,8/5',
                          style: TCTypography.of(context)
                              .text_10
                              .copyWith(
                              color: const Color.fromARGB(
                                  255, 13, 117, 161),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
                : const SizedBox(),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 8),
              child: Text(
                'Passerina IGT Terre di Chieti Box 5l 2022',
                style: isLight
                    ? TCTypography.of(context).text_12
                    : TCTypography.of(context)
                    .text_12
                    .copyWith(color: Colors.white),
              ),
            ),
            isPriced
                ? Padding(
              padding: const EdgeInsets.only(left: 10, top: 8),
              child: Text(
                '€ 9,99',
                style: TCTypography.of(context).text_14_bold,
              ),
            )
                : const SizedBox(),
            isToogle
                ? Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: 27,
                  width: 115,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      context.read<CartBadgeCubitCubit>().addCartItem();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                      const Color.fromARGB(255, 172, 12, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                      size: 16,
                    ),
                    label: Text(
                      'AGGIUNGI',
                      style: TCTypography.of(context)
                          .text_12
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}