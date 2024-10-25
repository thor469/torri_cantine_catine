import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torri_cantine_app/all_products/cubit/products_wishlisted_cubit.dart';
import 'package:torri_cantine_app/app/utilitys/tc_typography.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

class WishListBottomItem extends StatefulWidget {
  final String text;
  final IconData icon;
  final bool isActive;

  const WishListBottomItem({
    Key? key,
    required this.icon,
    required this.isActive,
    required this.text,
  }) : super(key: key);

  @override
  State<WishListBottomItem> createState() => _WishListBottomItemState();
}

class _WishListBottomItemState extends State<WishListBottomItem> {
  LocalStorage storage = LocalStorage();
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        context.read<ProductsWishlistedCubit>().initWishlist();
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 0.20,
      height: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedOpacity(
            duration: const Duration(milliseconds: 340),
            opacity: widget.isActive ? 1 : 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.12,
              height: 5,
              color: widget.isActive
                  ? const Color.fromARGB(255, 161, 29, 51)
                  : Colors.transparent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child:
                BlocBuilder<ProductsWishlistedCubit, ProductsWishlistedState>(
              builder: (context, state) {
                if (state.wishListStatus && state.wishListProducts.isNotEmpty) {
                  return badges.Badge(
                    badgeContent: Text(
                      state.wishListProducts.length > 10
                          ? "10+"
                          : state.wishListProducts.length.toString(),
                      textAlign: TextAlign.center,
                      style: TCTypography.of(context)
                          .text_10_bold
                          .copyWith(color: Colors.white),
                    ),
                    position: badges.BadgePosition.topEnd(top: -10, end: -4),
                    badgeStyle: badges.BadgeStyle(
                      shape: badges.BadgeShape.circle,
                      badgeColor: const Color.fromARGB(255, 13, 117, 161),
                      padding: const EdgeInsets.all(6.5),
                      borderRadius: BorderRadius.circular(4),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2),
                    ),
                    badgeAnimation: const badges.BadgeAnimation.rotation(
                      animationDuration: Duration(seconds: 1),
                      colorChangeAnimationDuration: Duration(seconds: 1),
                      loopAnimation: false,
                      curve: Curves.fastOutSlowIn,
                      colorChangeAnimationCurve: Curves.easeInCubic,
                    ),
                    child: Column(
                      children: [
                        Icon(
                          widget.icon,
                          color: widget.isActive
                              ? const Color.fromARGB(255, 161, 29, 51)
                              : const Color.fromARGB(255, 99, 103, 106),
                        ),
                        Text(
                          widget.text,
                          style: TCTypography.of(context).text_10_bold.copyWith(
                                color: widget.isActive
                                    ? const Color.fromARGB(255, 161, 29, 51)
                                    : const Color.fromARGB(255, 99, 103, 106),
                              ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return Column(
                    children: [
                      Icon(
                        widget.icon,
                        color: widget.isActive
                            ? const Color.fromARGB(255, 161, 29, 51)
                            : const Color.fromARGB(255, 99, 103, 106),
                      ),
                      Text(
                        widget.text,
                        style: TCTypography.of(context).text_10_bold.copyWith(
                              color: widget.isActive
                                  ? const Color.fromARGB(255, 161, 29, 51)
                                  : const Color.fromARGB(255, 99, 103, 106),
                            ),
                      ),
                    ],
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
