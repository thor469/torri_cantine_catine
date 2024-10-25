import 'package:flutter/material.dart';

class FadePage extends Page {
  final Widget child;
  const FadePage({LocalKey? key, required this.child}) : super(key: key);
  @override
  Route createRoute(BuildContext context) {
    return PageRouteBuilder(
      settings: this,
      pageBuilder: (context, animation, secondaryAnimation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }
}
