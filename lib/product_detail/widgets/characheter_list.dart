import 'package:configurable_expansion_tile_null_safety/configurable_expansion_tile_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:torri_cantine_app/product_detail/product_detail/product_detail_bloc.dart';
import 'package:torri_cantine_app/product_detail/widgets/charachter_item.dart';

class CharList extends StatefulWidget {
  const CharList({super.key});

  @override
  State<CharList> createState() => _CharListState();
}
bool isExpanded=false;
class _CharListState extends State<CharList> {
  @override
  Widget build(BuildContext context) {

    String? wineColor;
    // String? wineGrapes;
    // String? wineYear;
    // String? wineBottle;
    // String? wineMatching;
    // String? wineBio;
    // String? wineBiodyn;
    // String? wineStorage;
    // String? wineAlcohol;
    // String? wineProcess;
    // String? wineTemp;
    // String? wineWhen;


    return BlocBuilder<ProductDetailBloc, ProductDetailState>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const SizedBox(),
        loaded: (model) {

          // print('CharList model');
          // print(model.meta_data);
          wineColor= model.meta_data!.firstWhere((element) => element.key=='_wine_color').value;
          // wineGrapes= model.meta_data!.firstWhere((element) => element.key=='_wine_grapes').value;
          // wineYear= model.meta_data!.firstWhere((element) => element.key=='_wine_year').value;
          // wineBottle= model.meta_data!.firstWhere((element) => element.key=='_wine_container_size').value;
          // wineMatching= model.meta_data!.firstWhere((element) => element.key=='_wine_food_matching').value;
          // wineBio= model.meta_data!.firstWhere((element) => element.key=='_wine_organic').value;
          // wineBiodyn= model.meta_data!.firstWhere((element) => element.key=='_wine_biodynamic').value;
          // wineStorage= model.meta_data!.firstWhere((element) => element.key=='_wine_storage_time').value;
          // wineAlcohol= model.meta_data!.firstWhere((element) => element.key=='_wine_alcool').value;
          // wineProcess= model.meta_data!.firstWhere((element) => element.key=='_wine_ageing').value;
          // wineTemp= model.meta_data!.firstWhere((element) => element.key=='_wine_serving_temperature').value;
          // wineWhen= model.meta_data!.firstWhere((element) => element.key=='_wine_when_drink').value;

          if(model.weight == '' && (wineColor =='' || wineColor ==null)) {
            return const SizedBox();
          }

          return Column(

            children: [
              ConfigurableExpansionTile(
                initiallyExpanded: true,
                onExpansionChanged: (value) =>
                    setState(() {
                      isExpanded=value;
                    }),
                header: (isExpanded, iconTurns, heightFactor, controller) => SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("DETTAGLI PRODOTTO",
                            style: TCTypography.of(context).text_14_bold),
                        isExpanded==false?const Icon(Icons.add): const Icon(Icons.remove)
                      ],
                    ),
                  ),
                ),
                childrenBody: Column(
                  children: [
                    Column(
                      children: [
                        CharItem(
                          title: 'PESO',
                          img: 'assets/Articolo-info-peso.svg',
                          text: "${model.weight!} Kg",
                        ),
                        (wineColor!=null && wineColor!='')?
                        CharItem(
                          title: 'COLORE',
                          img: 'assets/Articolo-info-colore.svg',
                          text: wineColor,
                        ) : const SizedBox(),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(25, 16, 25, 16),
                child: Divider(
                  thickness: 1.3,
                ),
              ),

            ],
          );
        },
      ),
    );
  }
}



class CharListSecondary extends StatefulWidget {
  const CharListSecondary({super.key});

  @override
  State<CharListSecondary> createState() => _CharListSecondaryState();
}
bool isExpandedSecondary=false;
class _CharListSecondaryState extends State<CharListSecondary> {
  @override
  Widget build(BuildContext context) {

    String? wineColor;
    String? wineGrapes;
    String? wineYear;
    String? wineBottle;
    String? wineMatching;
    String? wineBio;
    String? wineBiodyn;
    String? wineStorage;
    String? wineAlcohol;
    String? wineProcess;
    String? wineTemp;
    String? wineWhen;


    return BlocBuilder<ProductDetailBloc, ProductDetailState>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const SizedBox(),
        loaded: (model) {

          // print('CharList model');
          // print(model.meta_data);
          wineColor= model.meta_data!.firstWhere((element) => element.key=='_wine_color').value;
          wineGrapes= model.meta_data!.firstWhere((element) => element.key=='_wine_grapes').value;
          wineYear= model.meta_data!.firstWhere((element) => element.key=='_wine_year').value;
          wineBottle= model.meta_data!.firstWhere((element) => element.key=='_wine_container_size').value;
          wineMatching= model.meta_data!.firstWhere((element) => element.key=='_wine_food_matching').value;
          wineBio= model.meta_data!.firstWhere((element) => element.key=='_wine_organic').value;
          wineBiodyn= model.meta_data!.firstWhere((element) => element.key=='_wine_biodynamic').value;
          wineStorage= model.meta_data!.firstWhere((element) => element.key=='_wine_storage_time').value;
          wineAlcohol= model.meta_data!.firstWhere((element) => element.key=='_wine_alcool').value;
          wineProcess= model.meta_data!.firstWhere((element) => element.key=='_wine_ageing').value;
          wineTemp= model.meta_data!.firstWhere((element) => element.key=='_wine_serving_temperature').value;
          wineWhen= model.meta_data!.firstWhere((element) => element.key=='_wine_when_drink').value;




          if (
          (wineGrapes == '' || wineGrapes == null) &&
          (wineYear == '' || wineYear == null) &&
          (wineBottle == '' || wineBottle == null) &&
          (wineMatching == '' || wineMatching == null) &&
          (wineBio == '' || wineBio == null) &&
          (wineBiodyn == '' || wineBiodyn == null) &&
          (wineStorage == '' || wineStorage == null) &&
          (wineProcess == '' || wineProcess == null) &&
          (wineTemp == '' || wineTemp == null) &&
          (wineWhen == '' || wineWhen == null)

          ) {
            return const SizedBox();
          }



          return Column(
            children: [

              ConfigurableExpansionTile(
                initiallyExpanded: false,
                onExpansionChanged: (value) =>
                    setState(() {
                      isExpanded=value;
                    }),
                header: (isExpanded, iconTurns, heightFactor, controller) => SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("DETTAGLI TECNICI",
                            style: TCTypography.of(context).text_14_bold),
                        isExpanded==false?const Icon(Icons.add): const Icon(Icons.remove)
                      ],
                    ),
                  ),
                ),
                childrenBody: Column(
                  children: [
                    Column(
                      children: [
                        //###############################
                        (wineBio!=null && wineBio!='')?
                        const CharItem(
                          title: 'BIOLOGICO',
                          img: 'assets/Articolo-info-abbinamenti-bio.svg',
                          text: 'Sì',
                        ) : const SizedBox(),

                        (wineBiodyn!=null && wineBiodyn!='')?
                        const CharItem(
                          title: 'AGRICOLTURA BIODINAMICA',
                          img: 'assets/Articolo-info-abbinamenti-bio.svg',
                          text: 'Sì',
                        ) : const SizedBox(),

                        (wineGrapes!=null && wineGrapes!='')?
                        CharItem(
                          title: 'UVE',
                          img: 'assets/Articolo-info-uve.svg',
                          text: wineGrapes,
                        ) : const SizedBox(),

                        (wineAlcohol!=null && wineAlcohol!='')?
                        CharItem(
                          title: 'GRADAZIONE ALCOLICA',
                          img: 'assets/Articolo-info-gradazione.svg',
                          text: wineAlcohol,
                        ) : const SizedBox(),

                        (wineYear!=null && wineYear!='')?
                        CharItem(
                          title: 'ANNATA',
                          img: 'assets/Articolo-info-abbinamenti-annata.svg',
                          text: wineYear,
                        ) : const SizedBox(),

                        (wineProcess!=null && wineProcess!='')?
                        CharItem(
                          title: 'VINIFICAZIONE',
                          img: 'assets/Articolo-info-vinificazione.svg',
                          text: wineProcess,
                        ) : const SizedBox(),


                        (wineBottle!=null && wineBottle!='')?
                        CharItem(
                          title: 'CAPIENZA DEL CONTENITORE',
                          img: 'assets/Articolo-info-abbinamenti-capienza.svg',
                          text: wineBottle,
                        ) : const SizedBox(),



                        (wineTemp!=null && wineTemp!='')?
                        CharItem(
                          title: 'TEMPERATURA DI SERVIZIO',
                          img: 'assets/Articolo-info-temperatura.svg',
                          text: wineTemp,
                        ) : const SizedBox(),

                        (wineMatching!=null && wineMatching!='')?
                        CharItem(
                          title: 'ABBINAMENTI',
                          img: 'assets/Articolo-info-abbinamenti.svg',
                          text: wineMatching,
                        ) : const SizedBox(),

                        (wineWhen!=null && wineWhen!='')?
                        CharItem(
                          title: 'QUANDO BERLO',
                          img: 'assets/Articolo-info-quando.svg',
                          text: wineWhen,
                        ) : const SizedBox(),

                        (wineStorage!=null && wineStorage!='')?
                        CharItem(
                          title: 'PERIODO DI CONSERVAZIONE',
                          img: 'assets/Articolo-info-conservazione.svg',
                          text: wineStorage,
                        ) : const SizedBox(),



                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(25, 16, 25, 16),
                child: Divider(
                  thickness: 1.3,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
