import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../constants/export.dart';
import '../utils/export.dart';

class CustomButton extends StatelessWidget {
  String text;
  Color backgroundColor;
  double? width;
  double? height;
  VoidCallback onPressed;
  bool isInvert;

  bool isTextBold;
  CustomButton({
    super.key,
    required this.text,
    this.backgroundColor = ColorConstants.primaryColor,
    this.isInvert = false,
    this.isTextBold = true,
    this.height,
    this.width,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? customWidth(0.9),
      height: height ?? customHeight(0.07),
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              isInvert ? ColorConstants.whiteColor : backgroundColor,
            ),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(color: ColorConstants.primaryColor)),
            )),
        child: AutoSizeText(
          text,
          style: TextStyleUtil.sizeMedium(
              color: isInvert
                  ? ColorConstants.primaryColor
                  : ColorConstants.whiteColor,
              isBold: isTextBold),
        ),
      ),
    );
  }
}
