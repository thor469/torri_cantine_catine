import 'package:flutter/material.dart';
import 'package:torri_cantine_app/all_products/model/response/all_products_response.dart';
import 'package:torri_cantine_app/all_products/widgets/product_preview.dart';

class ProductGrid extends StatefulWidget {
  final List<Product> products;
  // final List<int> productPoint;
  int pageNumber;

  ProductGrid({super.key, required this.products, required this.pageNumber});

  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {

  @override
  void initState() {
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 5,
        // width / height: fixed for all items
        childAspectRatio: 0.55,
      ),
      itemCount: widget.pageNumber > 0
          ? widget.products.length + 2
          : widget.products.length,
      itemBuilder: (BuildContext context, int index) {
        if (index < widget.products.length) {

          // print('PRODUCT PREVIEW');
          // print(widget.products[index].type);

          return ProductPreview(
            id: widget.products[index].id ?? 0,  // Default to 0 if id is null
            image: widget.products[index].images.isEmpty
                ? ""  // Default empty string if no image
                : widget.products[index].images.first?.src ?? "",  // Null check for src
            name: widget.products[index].name ?? 'Unknown Product',  // Default name
            price: widget.products[index].price ?? "0",  // Default price if null
            regular_price: widget.products[index].regular_price ?? "0",  // Default regular price
            description: widget.products[index].description ?? 'No Description Available',  // Default description
            short_description: widget.products[index].short_description ?? 'No Short Description',  // Default short description
            average_rating: widget.products[index].average_rating ?? "0",  // Default rating
            tags: widget.products[index].tags ?? [],  // Default to empty list
            categories: widget.products[index].categories ?? [],  // Default empty list
            type: widget.products[index].type ?? 'Unknown', productPoint: widget.products[index].points ?? 0,  // Default type if null
          );

        } else {
          return const Visibility(
            visible: true,
              child: Center(
                child: CircularProgressIndicator(
                  color: Color.fromARGB(255, 161, 29, 51),
                ),
              )
          );
        }
      },
    );
  }
}
