import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../styles/colors.dart';

Widget SvgPic({required String asset, required double width, Color color = foundationGreenD1}) {
  return SvgPicture.asset(
    asset,
    height: width,
    color: color,
    // matchTextDirection: true,
    // allowDrawingOutsideViewBox: true,
    // alignment: Alignment.topRight,
    // fit: BoxFit.scaleDown,
  );
}
