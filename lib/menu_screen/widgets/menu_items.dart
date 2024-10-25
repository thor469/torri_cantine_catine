import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:torri_cantine_app/app/utilitys/tc_typography.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

class MenuItems extends StatefulWidget {
  final String title;
  final String imgSVG;

  const MenuItems({
    super.key,
    required this.title,
    required this.imgSVG,
  });

  @override
  State<MenuItems> createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  LocalStorage storage = LocalStorage();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 17.5, bottom: 17.5),
      child: Row(
        children: [
          Expanded(
            child: SvgPicture.asset(
              widget.imgSVG,
              width: 20,
              height: 20,
            ),
          ),
          Expanded(
            flex: 10,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(widget.title,
                      style: TCTypography.of(context).text_14_bold),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
