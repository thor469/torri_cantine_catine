import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';

class AppBarItem extends StatefulWidget {
  final String text;

  final bool isActive;
  const AppBarItem({super.key, required this.isActive, required this.text});

  @override
  State<AppBarItem> createState() => _AppBarItemState();
}

class _AppBarItemState extends State<AppBarItem> {
  double opacity = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          Text(
            widget.text,
            style: TCTypography.of(context).text_12_bold.copyWith(
                color: widget.isActive
                    ? const Color.fromARGB(255, 161, 29, 51)
                    : const Color.fromARGB(255, 110, 116, 119)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 340),
              opacity: widget.isActive ? 1 : 0,
              child: Container(
                width: 35,
                height: 5,
                color: widget.isActive
                    ? const Color.fromARGB(255, 161, 29, 51)
                    : Colors.transparent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
