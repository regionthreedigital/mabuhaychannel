import 'package:flutter/material.dart';
import 'package:page_route_animator/page_route_animator.dart';

fade({required Widget widget, required RouteSettings settings}) {
  return PageRouteAnimator(
    child: widget,
    routeAnimation: RouteAnimation.fade,
    settings: settings,
    curve: Curves.linear,
    duration: const Duration(milliseconds: 500),
    reverseDuration: const Duration(milliseconds: 500),
  );
}

slide({required Widget widget, required RouteSettings settings}) {
  return PageRouteAnimator(
    child: widget,
    routeAnimation: RouteAnimation.rightToLeft,
    settings: settings,
    curve: Curves.linear,
    duration: const Duration(milliseconds: 500),
    reverseDuration: const Duration(milliseconds: 500),
  );
}
