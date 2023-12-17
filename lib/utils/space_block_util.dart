import 'package:flutter/material.dart';
import 'package:flutter_gp/utils/export.dart';

class SpaceUtil {
  //vertical spaces
  static Widget veryMinorBlockSpace = SizedBox(
    height: customHeight(0.005),
  );
  static Widget minorBlockSpace = SizedBox(
    height: customHeight(0.01),
  );
  static Widget semiHalfBlockSpace = SizedBox(
    height: customHeight(0.03),
  );
  static Widget semiFullBlockSpace = SizedBox(
    height: customHeight(0.07),
  );
  static Widget halfBlockSpace = SizedBox(
    height: customHeight(0.05),
  );
  static Widget oneBlockSpace = SizedBox(
    height: customHeight(0.1),
  );
  static Widget twoBlockSpace = SizedBox(
    height: customHeight(0.2),
  );
  static Widget threeBlockSpace = SizedBox(
    height: customHeight(0.3),
  );
  //horizontal spaces
  static Widget horMinorBlockSpace = SizedBox(
    width: customWidth(0.02),
  );
  static Widget horhalfBlockSpace = SizedBox(
    width: customWidth(0.05),
  );
  static Widget horOneBlockSpace = SizedBox(
    width: customWidth(0.1),
  );

  static Widget horTwoBlockSpace = SizedBox(
    width: customWidth(0.2),
  );
  static Widget horThreeBlockSpace = SizedBox(
    width: customWidth(0.3),
  );
}
