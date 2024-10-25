import 'package:flutter/material.dart';
import 'package:torri_cantine_app/app/common/primary_button.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';

import '../../app/routing/main_navigation.dart';

class CustomBanner extends StatefulWidget {
  const CustomBanner({
    super.key,
  });

  @override
  State<CustomBanner> createState() => _CustomBannerState();
}

class _CustomBannerState extends State<CustomBanner> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.2,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage("assets/background.png"),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "TUTTI I PRODOTTI",
                style: TCTypography.of(context)
                    .text_22_bold
                    .copyWith(color: Colors.white),
              ),
              // TODO check string
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Sfoglia il catalogo completo dei nostri articoli",
                  style: TCTypography.of(context)
                      .text_14
                      .copyWith(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.225,
                  height: 28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: const Color.fromARGB(255, 158, 29, 48),
                  ),
                  child: Center(
                    child: PrimaryButton(
                      text: "SCOPRI",
                      ontap: () => MainNavigation.push(
                        context,
                        const MainNavigation.products(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
