import 'package:flutter/material.dart';
import 'package:torri_cantine_app/all_products/model/response/all_products_response.dart';
import 'package:torri_cantine_app/all_products/widgets/product_preview.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';

class Highlights extends StatefulWidget {
  final String leftText;
  final String rightText;
  final List<Product> products;
  final bool isLoading;

  const Highlights({
    super.key,
    required this.leftText,
    required this.rightText,
    required this.products,
    required this.isLoading,
  });

  @override
  State<Highlights> createState() => _HighlightsState();
}

class _HighlightsState extends State<Highlights> {
  @override
  Widget build(BuildContext context) {
    var listProducts = widget.products;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              children: <Widget>[
                Text(
                  widget.leftText,
                  style: TCTypography.of(context)
                      .text_18_bold
                      .copyWith(color: Colors.black),
                ),
                const Spacer(),
                InkWell(
                  onTap: () => MainNavigation.push(
                    context,
                    const MainNavigation.products(),
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        widget.rightText,
                        style: TCTypography.of(context)
                            .text_14_bold
                            .copyWith(
                          color: const Color.fromARGB(255, 161, 29, 51),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            child: ListView.builder(
              // shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: widget.products.length + (widget.isLoading ? 1 : 0),
              itemBuilder: (context, index) {
                if (index >= widget.products.length) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width * 0.44,
                    height: MediaQuery.of(context).size.height / 100,
                    child: const Center(
                      child: CircularProgressIndicator(
                        color: Color.fromARGB(255, 161, 29, 51),
                      ),
                    ),
                  );
                }

                final product = widget.products[index];

                return SizedBox(
                  width: MediaQuery.of(context).size.width * 0.44,
                  height: MediaQuery.of(context).size.height / 100,
                  child: ProductPreview(
                      isPurchasableSable: product.purchasable ?? false,
                    image: (product.images.isNotEmpty && product.images.first.src != null)
                        ? product.images.first.src!  // Use null check operator if assured
                        : "",  // Default empty string if no image is available
                    name: product.name ?? 'Unknown',  // Default value for nullable String
                    id: product.id ?? 0,  // Ensure `id` is non-nullable; provide default if null
                    price: product.price?.toString() ?? "0",  // Ensure price is a string, provide default if null
                    regular_price: product.regular_price?.toString() ?? "0",  // Ensure regular price is a string
                    average_rating: product.average_rating?.toString() ?? "0",  // Ensure average rating is a string
                    tags: product.tags ?? [],  // Ensure tags is a List; provide empty list if null
                    description: product.description ?? 'No Description',  // Default description
                    short_description: product.short_description ?? 'No Short Description',  // Default short description
                    type: product.type ?? 'Unknown Type', productPoint: product.points ?? 0,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
