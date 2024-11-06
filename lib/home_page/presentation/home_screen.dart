import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:torri_cantine_app/all_products/all_products/all_products_bloc.dart';
import 'package:torri_cantine_app/app/common/tc_appbar.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/categories/presentation/categories_screen.dart';
import 'package:torri_cantine_app/home_page/widgets/home_page_body.dart';
import 'package:torri_cantine_app/promotions/presentation/promotions_screen.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../all_products/presentation/products_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  int? storageSelectedIndex;
  LocalStorage storage = LocalStorage();

  @override
  void initState() {
    // context.read<AllProductsBloc>().add(const AllProductsEvent.fetch(page: 1));
    readTabState();
    super.initState();
  }




  void readTabState  () async {
    storageSelectedIndex = await storage.getTabState() ;
    if(storageSelectedIndex!=0) {
      setState(() {
        selectedIndex = storageSelectedIndex!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        print('@#@#@#@ #@#@#@#@# @# @#@ #@# @# @# @# @ # #@ #@ @# pop invoked');
        MainNavigation.pop(context);
        //return;
      },
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 244, 244, 244),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: SizedBox(
            height: 70,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 0;
                      });
                      storage.setTabState(0);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: AppBarItem(
                        text: 'HOME',
                        isActive: selectedIndex == 0,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 1;
                      });
                      storage.setTabState(1);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: AppBarItem(
                        text: 'PRODOTTI',
                        isActive: selectedIndex == 1,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 2;
                      });
                      storage.setTabState(2);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: AppBarItem(
                        text: 'PROMOZIONI',
                        isActive: selectedIndex == 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            BlocBuilder<AllProductsBloc, AllProductsState>(
              builder: (context, state) => state.maybeWhen(
                orElse: () => const SizedBox(),
                loading: (products, page) => GestureDetector(
                  child: SvgPicture.asset(
                    "assets/Search.svg",
                    width: 22,
                    height: 22,
                  ),
                  onTap: () {
                    // context
                    //     .read<AllProductsBloc>()
                    //     .add(const AllProductsEvent.fetch());
                    showSearch(
                      context: context,
                      delegate: CustomSearch(),
                    );
                  },
                ),
                // loading: (products, page) => SvgPicture.asset(
                //   "assets/Search.svg",
                //   width: 22,
                //   height: 22,
                // ),
                loaded: (products, page) => GestureDetector(
                  child: SvgPicture.asset(
                    "assets/Search.svg",
                    width: 22,
                    height: 22,
                  ),
                  onTap: () {
                    // context
                    //     .read<AllProductsBloc>()
                    //     .add(const AllProductsEvent.fetch());
                    showSearch(
                      context: context,
                      delegate: CustomSearch(),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(width: 15),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                child: Align(
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 161, 29, 51),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: SvgPicture.asset(
                        "assets/chat-bianco.svg",
                      ),
                    ),
                  ),
                ),
                onTap: () async {

                  if (!await launchUrl(Uri.parse('https://wa.me/+393382028846'))) {
                    throw Exception('Could not launch url');
                  }

                },
              ),
            ),
          ],
          flexibleSpace: Container(),
        ),
        body: tabPage(selectedIndex),
      ),
    );


  }

  Widget tabPage(int i) {
    switch (i) {
      case 0:
        return const HomePageBody();
      case 1:
        return Products( fromMenu: false,
          showAppBar: false,);
        return const CategoriesScreen(
          showAppBar: false,
          fromMenu: false,
        );
      case 2:
        return const PromotionsScreen();
      default:
        return const HomePageBody();
    }
  }
}

class CustomSearch extends SearchDelegate {

  CustomSearch({
    String hintText = "Cerca",
  }) : super(
    searchFieldLabel: hintText,
    keyboardType: TextInputType.text,
    textInputAction: TextInputAction.search,
  );


  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {

    // print('@#@@#@# searchQuery');
    // print(query);

    final matchedProducts = context.read<AllProductsBloc>().state.maybeWhen(
          loaded: (model, page) => model ?? [],
          loading: (model, page) => model ?? [],
          orElse: () => [],
        )
        .where((product) => product.name.toLowerCase().contains(query.toLowerCase())).toList();

    print(matchedProducts.length);

    return Visibility(
        visible: query.isNotEmpty,
        child: ListView.builder(
          itemCount: matchedProducts.length,
          itemBuilder: (context, index) {
            final product = matchedProducts[index];
            final previewImage =
            product.images?.isNotEmpty ?? false ? product.images![0].src : '';

            return GestureDetector(
              onTap: () {
                MainNavigation.push(context,
                    MainNavigation.productDetail(matchedProducts[index].id));
              },
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(previewImage),
                ),
                title: Text(product.name),
              ),
            );
          },
        )

    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final matchedProducts = context
        .read<AllProductsBloc>()
        .state
        .maybeWhen(
          loaded: (model, page) => model ?? [],
          orElse: () => [],
        )
        .where((product) =>
            product.name.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return Visibility(
        visible: query.isNotEmpty,
        child: ListView.builder(
      itemCount: matchedProducts.length,
      itemBuilder: (context, index) {
        final product = matchedProducts[index];
        final previewImage =
            product.images?.isNotEmpty ?? false ? product.images![0].src : '';

        return GestureDetector(
          onTap: () {
            MainNavigation.push(context,
                MainNavigation.productDetail(matchedProducts[index].id));
          },
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(previewImage),
            ),
            title: Text(product.name),
          ),
        );
      },
    ));
  }
}
