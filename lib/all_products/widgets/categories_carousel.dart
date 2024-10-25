import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/app/utilitys/tc_typography.dart';
import 'package:torri_cantine_app/categories/categories/categories_bloc.dart';

class CategoriesCarousel extends StatefulWidget {
  const CategoriesCarousel({super.key});

  @override
  State<CategoriesCarousel> createState() => _CategoriesCarouselState();
}

class _CategoriesCarouselState extends State<CategoriesCarousel> {
  @override
  void initState() {
    context.read<CategoriesBloc>().add(const CategoriesEvent.fetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, left: 8, right: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, left: 8, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categorie",
                  style: TCTypography.of(context).text_16_bold.copyWith(
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                ),
                TextButton(
                  onPressed: () => MainNavigation.push(
                    context,
                    const MainNavigation.categories(true, false),
                  ),
                  child: Text(
                    "Vedi tutte",
                    style: TCTypography.of(context).text_14_bold.copyWith(
                          color: const Color.fromARGB(255, 161, 29, 51),
                        ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.13,
            child: BlocBuilder<CategoriesBloc, CategoriesState>(
              builder: (context, state) => state.maybeWhen(
                initial: () => const Center(
                  child: CircularProgressIndicator(
                    color: Color.fromARGB(255, 161, 29, 51),
                  ),
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator(
                    color: Color.fromARGB(255, 161, 29, 51),
                  ),
                ),
                error: () => const SizedBox(),
                orElse: () => const SizedBox(),
                loaded: (model) => GridView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
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
                                alignment: Alignment.topCenter,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                model.categories?[index].name ?? "",
                                style: TCTypography.of(context).text_12,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
