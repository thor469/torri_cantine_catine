
import 'package:flutter/material.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

class FloatingButton extends StatelessWidget {

  const FloatingButton({super.key});



  @override
  Widget build(BuildContext context) {
    LocalStorage storage = LocalStorage();

    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: GestureDetector(
        onTap: () {
          storage.setBottomTabState(0);
          MainNavigation.push(
            context,
            const MainNavigation.home(),
          );
        },
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: Image.asset("assets/torri.png"),
          ),
        ),
      ),
    );
  }
}