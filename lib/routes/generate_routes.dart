import 'package:flutter/material.dart';
import 'package:mabuhay/screen/account/register.dart';

import '../resource/transition/transition.dart';

onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case '/register':
      return fade(widget: const Register(), settings: settings);
    default:
      return null;
  }
}
