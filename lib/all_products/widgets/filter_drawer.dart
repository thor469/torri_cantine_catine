import 'dart:math';

import 'package:configurable_expansion_tile_null_safety/configurable_expansion_tile_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torri_cantine_app/all_products/all_products/all_products_bloc.dart';
import 'package:torri_cantine_app/all_products/model/response/all_products_response.dart';
import 'package:torri_cantine_app/all_products/presentation/products_screen.dart';
import 'package:torri_cantine_app/all_products/product_tags/product_tags/product_tags_bloc.dart';
import 'package:torri_cantine_app/app/app_config.dart';
import 'package:torri_cantine_app/app/common/primary_button.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:torri_cantine_app/categories/categories/categories_bloc.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

// ignore: must_be_immutable
class FilterDrawer extends StatefulWidget {
  FilterDrawer({
    super.key,
  });

  @override
  State<FilterDrawer> createState() => _FilterDrawerState();
}

class _FilterDrawerState extends State<FilterDrawer> {
  Map<String, bool> categoriesMap = {};
  Map<String, String> categoriesIdMap = {};
  Map<String, bool> tagsMap = {};
  Map<String, String> tagsIdMap = {};
  LocalStorage storage = LocalStorage();

  RangeValues currentRangeValues = const RangeValues(0, 100);

  @override
  void initState(){
    // context.read<CategoriesBloc>().add(const CategoriesEvent.fetch());
    context.read<ProductTagsBloc>().add(const ProductTagsEvent.fetch());
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final filterMaps = await storage.getFilters();
      if (filterMaps != null) {
        categoriesMap = filterMaps.first;
        tagsMap = filterMaps.last;
      }
      //storage.setPriceFilters(currentRangeValues);



    });


    super.initState();
  }




  @override
  Widget build(BuildContext context) {






    return Container(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child:
        SingleChildScrollView( child:

        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding( padding: EdgeInsets.only(top:24),),
              ListTile(
                leading: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.cancel_outlined)),
                title: Text(
                  "FILTRA",
                  style: TCTypography.of(context).text_18_bold.copyWith(
                        color: const Color.fromARGB(255, 113, 112, 112),
                      ),
                ),
              ),
              const Divider(
                color: Color.fromARGB(255, 138, 137, 137),
                height: 10,
              ),
              BlocBuilder<CategoriesBloc, CategoriesState>(
                  builder: (context, state) => state.maybeWhen(
                      error: () => const SizedBox(),
                      orElse: () => const SizedBox(),
                      initial: () => const Center(
                            child: CircularProgressIndicator(
                              color: Color.fromARGB(255, 161, 29, 51),
                            ),
                          ),
                      loading: () => const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: CircularProgressIndicator(
                                color: Color.fromARGB(255, 161, 29, 51),
                              ),
                            ),
                          ),
                      loaded: (model) {

                        //print("### DARIO CAT ");
                       // print(model.categories);
                        //print(model.categories?.length);

                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: ConfigurableExpansionTile(
                            enableExpanded:true,
                            headerExpanded: Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 7),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          "Categorie",
                                          style: TCTypography.of(context)
                                              .text_16_bold
                                              .copyWith(
                                                color: const Color.fromARGB(
                                                    255, 113, 112, 112),
                                              ),
                                        ),
                                      ),
                                      const Icon(
                                        Icons.keyboard_arrow_down,
                                        color:
                                            Color.fromARGB(255, 113, 112, 112),
                                        size: 35,
                                      ),
                                    ]),
                              ),
                            ),
                            header: (isExpanded, iconTurns, heightFactor,
                                    controller) =>
                                Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5.5, horizontal: 7),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        "Categorie",
                                        style: TCTypography.of(context)
                                            .text_16_bold
                                            .copyWith(
                                              color: const Color.fromARGB(
                                                  255, 113, 112, 112),
                                            ),
                                      ),
                                    ),
                                    const Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color.fromARGB(255, 113, 112, 112),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            childrenBody:


                            Container(
                              height: (model.categories?.length ?? 0) *54,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 7.0),
                                child: SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      scrollDirection: Axis.vertical,
                                      itemCount: model.categories?.length ?? 0,
                                      itemBuilder:
                                          (BuildContext context, int index) {

                                        return Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 2.0, left: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                model.categories?[index].name ??
                                                    "",
                                              ),
                                              Checkbox(
                                                  activeColor:
                                                      Colors.transparent,
                                                  checkColor:
                                                      const Color.fromARGB(
                                                          255, 161, 29, 51),
                                                  value: categoriesMap[model
                                                          .categories?[index]
                                                          .name] ??
                                                      false,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      if (value!) {
                                                        categoriesMap.addAll({
                                                          model
                                                              .categories![
                                                                  index]
                                                              .name: value
                                                        });
                                                        categoriesIdMap.addAll({
                                                          model
                                                                  .categories![
                                                                      index]
                                                                  .name:
                                                              model
                                                                  .categories![
                                                                      index]
                                                                  .id
                                                                  .toString()
                                                        });
                                                      } else if (categoriesMap
                                                          .containsKey(model
                                                              .categories![
                                                                  index]
                                                              .name)) {
                                                        categoriesIdMap.remove(
                                                            model
                                                                .categories![
                                                                    index]
                                                                .name);
                                                        categoriesMap.remove(
                                                            model
                                                                .categories![
                                                                    index]
                                                                .name);
                                                      }
                                                    });
                                                  }),
                                            ],
                                          ),
                                        );
                                      }),
                                )),

                          ),
                        );
                      })),
              const Divider(
                color: Color.fromARGB(255, 138, 137, 137),
                height: 10,
                indent: 20,
                endIndent: 20,
              ),
              BlocBuilder<ProductTagsBloc, ProductTagsState>(
                  builder: (context, state) => state.maybeWhen(
                      error: () => const SizedBox(),
                      orElse: () => const SizedBox(),
                      initial: () => const Center(
                            child: CircularProgressIndicator(
                              color: Color.fromARGB(255, 161, 29, 51),
                            ),
                          ),
                      loading: () => const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: CircularProgressIndicator(
                                color: Color.fromARGB(255, 161, 29, 51),
                              ),
                            ),
                          ),
                      loaded: (model) {




                        //print("### DARIO TAGS");
                        //print(model.tags);
                        //print(model.tags?.length);




                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: ConfigurableExpansionTile(
                            headerExpanded: Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 7),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          "Tags",
                                          style: TCTypography.of(context)
                                              .text_16_bold
                                              .copyWith(
                                                color: const Color.fromARGB(
                                                    255, 113, 112, 112),
                                              ),
                                        ),
                                      ),
                                      const Icon(
                                        Icons.keyboard_arrow_down,
                                        color:
                                            Color.fromARGB(255, 113, 112, 112),
                                        size: 35,
                                      ),
                                    ]),
                              ),
                            ),
                            header: (isExpanded, iconTurns, heightFactor,
                                    controller) =>
                                Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5.5, horizontal: 7),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        "Tags",
                                        style: TCTypography.of(context)
                                            .text_16_bold
                                            .copyWith(
                                              color: const Color.fromARGB(
                                                  255, 113, 112, 112),
                                            ),
                                      ),
                                    ),
                                    const Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color.fromARGB(255, 113, 112, 112),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            childrenBody: Container(
                                height: (model.tags?.length ?? 0) *54,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 7.0),
                                child: SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      scrollDirection: Axis.vertical,
                                      itemCount: model.tags?.length ?? 0,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Container(
                                          padding: const EdgeInsets.only(
                                              bottom: 2.0, left: 10),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  model.tags?[index].name ?? "",
                                                ),
                                                Checkbox(
                                                    activeColor:
                                                        Colors.transparent,
                                                    checkColor:
                                                        const Color.fromARGB(
                                                            255, 161, 29, 51),
                                                    value: tagsMap[model
                                                            .tags?[index]
                                                            .name] ??
                                                        false,
                                                    onChanged: (bool? value) {
                                                      setState(() {
                                                        if (value!) {
                                                          tagsMap.addAll({
                                                            model.tags![index]
                                                                .name: value
                                                          });
                                                          tagsIdMap.addAll({
                                                            model.tags![index]
                                                                    .name:
                                                                model
                                                                    .tags![
                                                                        index]
                                                                    .id
                                                                    .toString()
                                                          });
                                                        } else if (tagsMap
                                                            .containsKey(model
                                                                .tags![index]
                                                                .name)) {
                                                          tagsMap.remove(model
                                                              .tags![index]
                                                              .name);
                                                          tagsIdMap.remove(model
                                                              .tags![index]
                                                              .name);
                                                        }
                                                      });
                                                    }),
                                              ]),
                                        );
                                      }),
                                )),
                          ),
                        );
                      })),
              const Divider(
                color: Color.fromARGB(255, 138, 137, 137),
                height: 10,
                indent: 20,
                endIndent: 20,
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 20, bottom: 10),
                title: Text(
                  "Prezzo",
                  style: TCTypography.of(context).text_16_bold.copyWith(
                        color: const Color.fromARGB(255, 113, 112, 112),
                      ),
                ),
              ),
              BlocBuilder<AllProductsBloc, AllProductsState>(
                builder: (context, state) => state.maybeWhen(
                    error: () => const SizedBox(),
                    orElse: () => const SizedBox(),
                    initial: () => const Center(
                          child: CircularProgressIndicator(
                            color: Color.fromARGB(255, 161, 29, 51),
                          ),
                        ),
                    loading: (products, page)  {
                      if(products.isEmpty) {
                        return Center(
                          child: CircularProgressIndicator(
                            color: Color.fromARGB(255, 161, 29, 51),
                          ),
                        );
                      }


                      storage.setPriceFilters(currentRangeValues);
                      return Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0),
                              child: RangeSlider(
                                inactiveColor: Colors.grey,
                                activeColor: const Color.fromARGB(255, 161, 29, 51),
                                values: currentRangeValues,
                                max: max(maxPrice(products ?? <Product>[]),currentRangeValues.end),
                                //max: 120,
                                min: 0,
                                divisions: 100,
                                labels: RangeLabels(
                                  "€ ${currentRangeValues.start.round()}",
                                  "€ ${currentRangeValues.end.round()}",
                                ),
                                onChanged: (RangeValues values) {
                                  setState(() {
                                    currentRangeValues = values;
                                    print('storage.getPriceFilters()');

                                    storage.setPriceFilters(values);


                                    print(storage.getPriceFilters());
                                  });
                                },
                              )),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 32),
                            child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "€ 0,00",
                                    style: TCTypography.of(context)
                                        .text_12_bold
                                        .copyWith(
                                      color: const Color.fromARGB(
                                          255, 113, 112, 112),
                                    ),
                                  ),
                                  Text(
                                    "${maxPrice(products ?? <Product>[])} €",
                                    style: TCTypography.of(context)
                                        .text_12_bold
                                        .copyWith(
                                      color: const Color.fromARGB(
                                          255, 113, 112, 112),
                                    ),
                                  )
                                ]),
                          ),
                        ],
                      );
                    },
                    loaded: (products, page)  {
                      if(products.isEmpty) {
                        return Center(
                          child: CircularProgressIndicator(
                            color: Color.fromARGB(255, 161, 29, 51),
                          ),
                        );
                      }


                      storage.setPriceFilters(currentRangeValues);
                      return Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0),
                              child: RangeSlider(
                                inactiveColor: Colors.grey,
                                activeColor: const Color.fromARGB(255, 161, 29, 51),
                                values: currentRangeValues,
                                max: max(maxPrice(products ?? <Product>[]),currentRangeValues.end),
                                //max: 120,
                                min: 0,
                                divisions: 100,
                                labels: RangeLabels(
                                  "€ ${currentRangeValues.start.round()}",
                                  "€ ${currentRangeValues.end.round()}",
                                ),
                                onChanged: (RangeValues values) {
                                  setState(() {
                                    currentRangeValues = values;
                                    print('storage.getPriceFilters()');

                                    storage.setPriceFilters(values);


                                    print(storage.getPriceFilters());
                                  });
                                },
                              )),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 32),
                            child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "€ 0,00",
                                    style: TCTypography.of(context)
                                        .text_12_bold
                                        .copyWith(
                                      color: const Color.fromARGB(
                                          255, 113, 112, 112),
                                    ),
                                  ),
                                  Text(
                                    "${maxPrice(products ?? <Product>[])} €",
                                    style: TCTypography.of(context)
                                        .text_12_bold
                                        .copyWith(
                                      color: const Color.fromARGB(
                                          255, 113, 112, 112),
                                    ),
                                  )
                                ]),
                          ),
                        ],
                      );
                    }
                    // loaded: (model, page) {
                    //
                    //   // print("DARIO RANGESLIDER");
                    //   // print('${maxPrice(model ?? <Product>[])}');
                    //     //storage.setPriceFilters(currentRangeValues);
                    //
                    //
                    //     return Column(
                    //       children: [
                    //         Padding(
                    //             padding: const EdgeInsets.symmetric(
                    //                 horizontal: 16.0),
                    //             child: RangeSlider(
                    //               inactiveColor: Colors.grey,
                    //               values: currentRangeValues,
                    //               max: max(maxPrice(model ?? <Product>[]),currentRangeValues.end),
                    //
                    //               //max: 120,
                    //               min: 0,
                    //               divisions: 100,
                    //               labels: RangeLabels(
                    //                 "${currentRangeValues.start.round()} €",
                    //                 "${currentRangeValues.end.round()} €",
                    //               ),
                    //               onChanged: (RangeValues values) {
                    //                 setState(() {
                    //                   currentRangeValues = values;
                    //                   storage.setPriceFilters(values);
                    //                 });
                    //               },
                    //             )),
                    //         Padding(
                    //           padding:
                    //               const EdgeInsets.symmetric(horizontal: 32),
                    //           child: Row(
                    //               mainAxisAlignment:
                    //                   MainAxisAlignment.spaceBetween,
                    //               children: [
                    //                 Text(
                    //                   "0 €",
                    //                   style: TCTypography.of(context)
                    //                       .text_12_bold
                    //                       .copyWith(
                    //                         color: const Color.fromARGB(
                    //                             255, 113, 112, 112),
                    //                       ),
                    //                 ),
                    //                 Text(
                    //                   "${maxPrice(model ?? <Product>[])} €",
                    //                   style: TCTypography.of(context)
                    //                       .text_12_bold
                    //                       .copyWith(
                    //                         color: const Color.fromARGB(
                    //                             255, 113, 112, 112),
                    //                       ),
                    //                 )
                    //               ]),
                    //         ),
                    //       ],
                    //     );
                    // }

                                  ),
              ),
            ]),


            Padding(
              padding: const EdgeInsets.all(20.0),
              child: PrimaryButton(
                text: "Applica",
                ontap: () {
                  context
                      .read<AllProductsBloc>()
                      .add(AllProductsEvent.filterProducts(
                        categories: categoriesToString(categoriesIdMap),
                        tags: tagsToString(tagsIdMap),
                        minPrice: currentRangeValues.start.toString(),
                        maxPrice: currentRangeValues.end.toString(),
                        catalogVisibility: '${AppConfig.productStatusFilter}'
                      ));

                  storage.setFilters(categoriesMap, tagsMap);
                  storage.setPriceFilters(currentRangeValues);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Products(
                        minPrice: currentRangeValues.start,
                        maxPrice: currentRangeValues.end,
                        categoriesMap: categoriesMap,
                        tagsMap: tagsMap,
                        categoriesIdMap: categoriesToString(categoriesIdMap),
                        tagsIdMap: tagsToString(tagsIdMap),
                        fromMenu: true,
                        showAppBar: true,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),

        ),
      ),
    );
  }

  double maxPrice(List<Product> products) {
    List<double> pricesList = (products
        .map((p) => double.parse(p.price == "" ? "0" : p.price!))
        .toList());
    double maxPrice = pricesList.reduce((a, b) => a > b ? a : b);

    return maxPrice;
  }

  String categoriesToString(Map<String, String> categoriesIdMap) {
    String categoriesId = "";

    for (var element in categoriesIdMap.values) {
      if (categoriesId == "") {
        categoriesId = element;
      } else {
        categoriesId = "$categoriesId,$element";
      }
    }
    return categoriesId;
  }

  String tagsToString(Map<String, String> tagsIdMap) {
    String tagsId = "";

    for (var element in tagsIdMap.values) {
      if (tagsId == "") {
        tagsId = element;
      } else {
        tagsId = "$tagsId,$element";
      }
    }
    return tagsId;
  }
}
