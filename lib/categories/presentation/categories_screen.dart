import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/floating_action_button.dart';
import 'package:torri_cantine_app/app/common/primary_button.dart';
import 'package:torri_cantine_app/app/common/sub_page_appbar.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/app/utilitys/tc_typography.dart';
import 'package:torri_cantine_app/categories/categories/categories_bloc.dart';

import '../../app/common/bottom_bar_items/bottom_bar.dart';

class CategoriesScreen extends StatefulWidget {
  final bool showAppBar;
  final bool fromMenu;

  const CategoriesScreen({
    super.key,
    this.showAppBar = false,
    required this.fromMenu,
  });

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  void initState() {
    context.read<CategoriesBloc>().add(const CategoriesEvent.fetch());
    super.initState();
  }

  int selectedindex =0;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  refresh(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          // print('@#@#@#@ #@#@#@#@# @# @#@ #@# @# @# @# @ # #@ #@ @# pop invoked');
          MainNavigation.pop(context);
          //return;
        },
        child:Scaffold(
          backgroundColor: Color.fromARGB(255, 244, 244, 244),
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: widget.showAppBar
                  ? SubPageAppbar(
                text: "TUTTE LE CATEGORIE",
                onTap: widget.fromMenu
                    ? () { MainNavigation.pop(context); }
                    : () => MainNavigation.pop(context),
              )
                  : const SizedBox()),
          floatingActionButton: FloatingButton(),
          floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
          bottomNavigationBar: BottomBanvigationMenu(
            scaffoldKey: scaffoldKey,
            initialSelectedIndex: 0,
            context: context,
            //notifyParent: () => refresh(selectedindex),
          ),

          body: BlocBuilder<CategoriesBloc, CategoriesState>(
            builder: (context, state) => state.maybeWhen(
              initial: () => SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: const Center(
                  child: CircularProgressIndicator(
                    color: Color.fromARGB(255, 161, 29, 51),
                  ),
                ),
              ),
              loading: () => SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: const Center(
                  child: CircularProgressIndicator(
                    color: Color.fromARGB(255, 161, 29, 51),
                  ),
                ),
              ),
              error: () => const SizedBox(),
              orElse: () => const SizedBox(),
              loaded: (model) => SingleChildScrollView(
                child: Column(
                  children: [
                    // Padding(
                    //   padding:
                    //       const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    //   child: Container(
                    //     width: MediaQuery.of(context).size.width,
                    //     height: MediaQuery.of(context).size.height * 0.2,
                    //     decoration: const BoxDecoration(
                    //         color: Colors.amber,
                    //         image: DecorationImage(
                    //             fit: BoxFit.fitWidth,
                    //             image: AssetImage("assets/background.png"))),
                    //     child: Center(
                    //       child: Column(mainAxisSize: MainAxisSize.min, children: [
                    //         Text(
                    //           "TUTTI I PRODOTTI",
                    //           style: TCTypography.of(context)
                    //               .text_18_bold
                    //               .copyWith(color: Colors.white),
                    //         ),
                    //         // TODO check string
                    //         Padding(
                    //           padding: const EdgeInsets.all(8.0),
                    //           child: Text(
                    //             "Sfoglia il catalogo completo dei nostri articoli",
                    //             style: TCTypography.of(context)
                    //                 .text_12
                    //                 .copyWith(color: Colors.white),
                    //           ),
                    //         ),
                    //         Padding(
                    //           padding: const EdgeInsets.all(8.0),
                    //           child: Container(
                    //             width: MediaQuery.of(context).size.width * 0.20,
                    //             height: 20,
                    //             decoration: BoxDecoration(
                    //               borderRadius: BorderRadius.circular(7),
                    //               color: const Color.fromARGB(255, 158, 29, 48),
                    //             ),
                    //             child: Center(
                    //               child: PrimaryButton(
                    //                 text: "SCOPRI",
                    //                 ontap: () => MainNavigation.push(
                    //                     context, const MainNavigation.products()),
                    //               ),
                    //             ),
                    //           ),
                    //         )
                    //       ]),
                    //     ),
                    //   ),
                    // ),
                    Padding(padding: EdgeInsets.only(top:24),),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Tipologie',
                            style: TCTypography.of(context).text_18_bold),
                      ),
                    ),
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: model.categories?.length ?? 0,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            MainNavigation.push(
                                context,
                                MainNavigation.categoriesDetail(
                                    model.categories![index].id));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              elevation: 2,
                              clipBehavior: Clip.antiAlias,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Expanded(
                                    child: Image.network(
                                      model.categories?[index].image?.src ?? "",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      model.categories?[index].name ?? "",
                                      style: TCTypography.of(context).text_14_bold,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        )

    );



  }
}
