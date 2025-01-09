import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/utilities/enum.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

class ProfileItems extends StatefulWidget {
  final int id;
  final String title;
  final bool isSelected;
  final Function() onNavigationTap;
  const ProfileItems({
    super.key,
    required this.id,
    required this.title,
    required this.isSelected,
    required this.onNavigationTap,
  });

  @override
  State<ProfileItems> createState() => _ProfileItemsState();
}

class _ProfileItemsState extends State<ProfileItems> {
  var currentProfile = PersonalProfile.myaccount;
  LocalStorage storage = LocalStorage();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: InkWell(
          onTap: ()async {
            await storage.setBottomTabState(4);
            widget.onNavigationTap();
            // MainNavigation.push(context, widget.onTapNavigation);
          },
          child: Row(
            children: [
              Expanded(
                child: Text(
                  widget.title,
                  style: TCTypography.of(context).text_14,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
