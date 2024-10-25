import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torri_cantine_app/cart/cart/cart_bloc.dart';
import 'package:torri_cantine_app/cart/cubit/cart_badge_cubit_cubit.dart';
import 'package:torri_cantine_app/app/utilitys/tc_typography.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

class CartBottomItem extends StatefulWidget {
  final String text;

  final IconData icon;
  final bool isActive;
  const CartBottomItem({
    super.key,
    required this.icon,
    required this.isActive,
    required this.text,
  });

  @override
  State<CartBottomItem> createState() => _CartBottomItemState();
}

class _CartBottomItemState extends State<CartBottomItem> {
  @override
  void initState() {
    context.read<CartBloc>().add(const CartEvent.fetch());
    super.initState();
  }

  LocalStorage storage = LocalStorage();
  double opacity = 1;
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
            child: BlocBuilder<CartBadgeCubitCubit, int>(
              builder: (context, state) {
                if (state > 0) {
                  return badges.Badge(
                    badgeContent: Padding(
                      padding: const EdgeInsets.only(bottom: 1),
                      child: Text(
                        state > 10 ? "10+" : state.toString(),
                        textAlign: TextAlign.center,
                        style: TCTypography.of(context)
                            .text_10_bold
                            .copyWith(color: Colors.white),
                      ),
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
          )
        ],
      ),
    );
  }
}
