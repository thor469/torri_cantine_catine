import 'dart:math';

import 'package:flutter/material.dart';

class FixedCenterDockedFabLocation extends FloatingActionButtonLocation {
  const FixedCenterDockedFabLocation({
    required this.context, required double bottomDistance,
  });
  final BuildContext context;

  @protected
  double getDockedY(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    final double contentBottom = scaffoldGeometry.contentBottom;
    final double bottomSheetHeight = scaffoldGeometry.bottomSheetSize.height;
    final double fabHeight = scaffoldGeometry.floatingActionButtonSize.height;
    final double snackBarHeight = scaffoldGeometry.snackBarSize.height;
    double bottomDistance = MediaQuery.of(context).viewInsets.bottom;

    double fabY = contentBottom + bottomDistance - fabHeight / 2.0;

    // The FAB should sit with a margin between it and the snack bar.
    if (snackBarHeight > 0.0) {
      fabY = min(fabY, contentBottom - snackBarHeight - fabHeight - kFloatingActionButtonMargin);
    }
    // The FAB should sit with its center in front of the top of the bottom sheet.
    if (bottomSheetHeight > 0.0) {
      fabY = min(fabY, contentBottom - bottomSheetHeight - fabHeight / 2.0);
    }

    final double maxFabY = scaffoldGeometry.scaffoldSize.height - fabHeight;
    return min(maxFabY, fabY);
  }
  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    final double fabX = (scaffoldGeometry.scaffoldSize.width - scaffoldGeometry.floatingActionButtonSize.width) / 2.0;
    return Offset(fabX, getDockedY(scaffoldGeometry));
  }



  static _dockedFabLocation(context) {
    if (MediaQuery.of(context).viewInsets.bottom != 0) {
      return FixedCenterDockedFabLocation(bottomDistance: MediaQuery.of(context).viewInsets.bottom, context: context);
    } else {
      return FloatingActionButtonLocation.centerDocked;
    }
  }
}