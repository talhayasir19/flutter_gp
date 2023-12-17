//email widget
import 'package:flutter/material.dart';
import 'package:flutter_gp/constants/export.dart';
import 'package:flutter_gp/utils/export.dart';

Widget customTextField(String hint) {
  return SizedBox(
    width: customWidth(0.9),
    height: customHeight(0.07),
    child: TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyleUtil.sizeSmall(),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: ColorConstants.lightGreyColor)),
      ),
    ),
  );
}
