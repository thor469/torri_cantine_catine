import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/categories/categories/categories_bloc.dart';
import 'package:torri_cantine_app/categories/presentation/categories_screen.dart';
import 'package:torri_cantine_app/home_page/widgets/black_carousel.dart';
import 'package:torri_cantine_app/home_page/widgets/custom_banner.dart';

class BlackBanner extends StatefulWidget {
  const BlackBanner({super.key});

  @override
  State<BlackBanner> createState() => _BlackBannerState();
}

class _BlackBannerState extends State<BlackBanner> {
  @override
  void initState() {
    context.read<CategoriesBloc>().add(const CategoriesEvent.fetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(246, 0, 0, 0),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
            child: CustomBanner(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
            child: Row(
              children: <Widget>[
                Text("Vigne Lomanegra",
                    style: TCTypography.of(context)
                        .text_18_bold
                        .copyWith(color: Colors.white)),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    MainNavigation.push(
                        context, const MainNavigation.products());
                  },
                  child: Row(
                    children: [
                      Text(
                        "Vedi tutti",
                        style: TCTypography.of(context).text_14_bold.copyWith(
                              color: const Color.fromARGB(255, 161, 29, 51),
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4.2,
              child: BlocBuilder<CategoriesBloc, CategoriesState>(
                builder: (context, state) => state.maybeWhen(
                  initial: () => const Center(
                      child: CircularProgressIndicator(
                    color: Color.fromARGB(255, 161, 29, 51),
                  )),
                  loading: () => const Center(
                      child: CircularProgressIndicator(
                    color: Color.fromARGB(255, 161, 29, 51),
                  )),
                  error: () => const SizedBox(),
                  orElse: () => const SizedBox(),
                  loaded: (model) => ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: 110,
                        height: 10,
                        child: BlackCarousel(
                          name: model.categories?[index].name ?? "",
                          isLight: false,
                          isToogle: false,
                          isRated: false,
                          isPriced: false, imageUrl: model.categories?[index].image?.src ?? "",
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
