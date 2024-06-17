import 'package:flutter/material.dart';

import '../../styles/colors.dart';
import '../../textstyle/edmondsans/edmondsans_bold.dart';
import '../svg_pic.dart';

class CommonHeader extends StatelessWidget {
  const CommonHeader({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPic(
          asset: "assets/icons/common/arrow_left_large.svg",
          width: 24,
          color: foundationGreenD2,
        ),
        SizedBox(
          width: width * .275,
        ),
        Text(
          "mabuhay",
          style: EdmondsansBold.foundationGreenD2.h1,
        )
      ],
    );
  }
}
