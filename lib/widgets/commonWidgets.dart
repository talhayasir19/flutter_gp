import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gp/constants/color_constants.dart';
import 'package:flutter_gp/utils/screen_basic_elements.dart';
import 'package:flutter_gp/utils/textstyle_util.dart';

Widget didnotHaveAccountWidget() {
  return //din't have account widget
      Padding(
    padding: EdgeInsets.only(bottom: customHeight(0.04)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AutoSizeText(
          "Don't have an account?",
          style: TextStyleUtil.sizeSmall(
            isBold: false,
          ),
        ),
        InkWell(
          onTap: () {},
          child: AutoSizeText(
            ' Register',
            style: TextStyleUtil.sizeSmall(
                isBold: true, color: ColorConstants.primaryColor),
          ),
        ),
      ],
    ),
  );
}
