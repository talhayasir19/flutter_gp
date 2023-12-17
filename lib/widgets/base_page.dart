import 'package:flutter/material.dart';

import '../constants/export.dart';
import '../utils/screen_basic_elements.dart';

class BasePage extends StatelessWidget {
  BasePage({super.key, required this.body, this.isPadded = true});
  Widget body;
  bool isPadded;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.primaryColor,
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: isPadded
                ? EdgeInsets.only(
                    left: customWidth(0.05), right: customWidth(0.05))
                : EdgeInsets.zero,
            child: Align(alignment: Alignment.topCenter, child: body),
          ),
        ),
      ),
    );
  }
}
