import 'package:flutter/material.dart';
import 'package:torri_cantine_app/app/utilitys/tc_typography.dart';

class FiltersBar extends StatefulWidget implements PreferredSizeWidget {
  const FiltersBar({super.key});

  @override
  State<FiltersBar> createState() => _FiltersBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight) / 2;
}

class _FiltersBarState extends State<FiltersBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //TODO: sostituire con funzione filtra
          Text(
            "PREZZO BASSO - ALTO",
            style: TCTypography.of(context)
                .text_12_bold
                .copyWith(color: const Color(0xff6E7477)),
          ),
          Text(
            "Filtra",
            style: TCTypography.of(context)
                .text_12_bold
                .copyWith(color: const Color(0xff6E7477)),
          ),
        ],
      ),
    );
  }
}
