import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torri_cantine_app/all_products/all_products/all_products_bloc.dart';
import 'package:torri_cantine_app/all_products/presentation/products_screen.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';

class OrderDrawer extends StatefulWidget {
  Map<String, bool>? categoriesMap;
  Map<String, bool>? tagsMap;

  OrderDrawer({super.key, this.categoriesMap, this.tagsMap});

  @override
  State<OrderDrawer> createState() => _OrderDrawerState();
}

class _OrderDrawerState extends State<OrderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.cancel_outlined)),
            title: Text(
              "ORDINA",
              style: TCTypography.of(context).text_18_bold.copyWith(
                color: const Color.fromARGB(255, 113, 112, 112),
              ),
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 138, 137, 137),
            height: 10,
          ),
          ListTile(
              contentPadding: const EdgeInsets.only(left: 20, bottom: 10),
              title: Text(
                "Prezzo crescente",
                style: TCTypography.of(context).text_16_bold.copyWith(
                  color: const Color.fromARGB(255, 113, 112, 112),
                ),
              ),
              onTap: () => {
                context.read<AllProductsBloc>().add(
                  AllProductsEvent.fetch(
                    page: 1,
                    order: "asc",
                    orderBy: "price",
                  ),
                ),
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Products(
                          orderAsc: true,
                          categoriesMap: widget.categoriesMap,
                          tagsMap: widget.tagsMap,
                          fromMenu: true,
                          showAppBar: true,
                        ))),
              }),
          const Divider(
            color: Color.fromARGB(255, 138, 137, 137),
            height: 1,
            indent: 20,
            endIndent: 20,
          ),
          ListTile(
              contentPadding: const EdgeInsets.only(left: 20, bottom: 10),
              title: Text(
                "Prezzo decrescente",
                style: TCTypography.of(context).text_16_bold.copyWith(
                  color: const Color.fromARGB(255, 113, 112, 112),
                ),
              ),
              onTap: () => {
                context.read<AllProductsBloc>().add(
                  AllProductsEvent.fetch(
                    page: 1,
                    order: "desc",
                    orderBy: "price",

                  ),
                ),
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Products(
                          orderDesc: true,
                          categoriesMap: widget.categoriesMap,
                          tagsMap: widget.tagsMap,
                          fromMenu: true,
                          showAppBar: true,
                        ))),
              }),
          const Divider(
            color: Color.fromARGB(255, 138, 137, 137),
            height: 1,
            indent: 20,
            endIndent: 20,
          ),
          ListTile(
              contentPadding: const EdgeInsets.only(left: 20, bottom: 10),
              title: Text(
                "Più popolare",
                style: TCTypography.of(context).text_16_bold.copyWith(
                  color: const Color.fromARGB(255, 113, 112, 112),
                ),
              ),
              onTap: () => {
                context.read<AllProductsBloc>().add(
                  AllProductsEvent.fetch(
                    page: 1,
                    order: "desc",
                    orderBy: "popularity",

                  ),
                ),
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Products(
                      orderDate: true,
                      categoriesMap: widget.categoriesMap,
                      tagsMap: widget.tagsMap,
                      fromMenu: true,
                      showAppBar: true,
                    ),
                  ),
                ),
              }),
          const Divider(
            color: Color.fromARGB(255, 138, 137, 137),
            height: 1,
            indent: 20,
            endIndent: 20,
          ),
          ListTile(
              contentPadding: const EdgeInsets.only(left: 20, bottom: 10),
              title: Text(
                "Più recente",
                style: TCTypography.of(context).text_16_bold.copyWith(
                  color: const Color.fromARGB(255, 113, 112, 112),
                ),
              ),
              onTap: () => {
                context.read<AllProductsBloc>().add(
                  AllProductsEvent.fetch(
                    page: 1,
                    order: "desc",
                    orderBy: "date",
                  ),
                ),
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Products(
                      orderDate: true,
                      categoriesMap: widget.categoriesMap,
                      tagsMap: widget.tagsMap,
                      fromMenu: true,
                      showAppBar: true,
                    ),
                  ),
                ),
              }),
          const Divider(
            color: Color.fromARGB(255, 138, 137, 137),
            height: 1,
            indent: 20,
            endIndent: 20,
          ),
          ListTile(
              contentPadding: const EdgeInsets.only(left: 20, bottom: 10),
              title: Text(
                "Valutazione media",
                style: TCTypography.of(context).text_16_bold.copyWith(
                  color: const Color.fromARGB(255, 113, 112, 112),
                ),
              ),
              onTap: () => {
                context.read<AllProductsBloc>().add(
                  AllProductsEvent.fetch(
                    page: 1,
                    order: "desc",
                    orderBy: "rating",
                  ),
                ),
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Products(
                      orderRating: true,
                      categoriesMap: widget.categoriesMap,
                      tagsMap: widget.tagsMap,
                      fromMenu: true,
                      showAppBar: true,
                    ),
                  ),
                ),
              }),
        ],
      ),
    );
  }
}
