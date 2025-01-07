import 'package:flutter/material.dart';
import 'package:torri_cantine_app/all_products/model/response/all_products_response.dart';
import 'package:torri_cantine_app/all_products/widgets/product_preview.dart';

class ProductGrid extends StatelessWidget {
  final List<Product> products;

  const ProductGrid({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 0.525,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ProductPreview(
            isPurchasableSable: product.purchasable ?? false,
            id: product.id ?? 0,
            image: product.images.isEmpty ? "" : product.images.first?.src ?? "",
            name: product.name ?? 'Unknown Product',
            price: product.price ?? "0",
            regular_price: product.regular_price ?? "0",
            description: product.description ?? 'No Description Available',
            short_description: product.short_description ?? 'No Short Description',
            average_rating: product.average_rating ?? "0",
            tags: product.tags ?? [],
            categories: product.categories ?? [],
            type: product.type ?? 'Unknown',
            productPoint: product.points ?? 0,
          );
        },
      ),
    );
  }
}