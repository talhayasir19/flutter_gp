import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gp/constants/color_constants.dart';
import 'package:flutter_gp/utils/navigator/export.dart';

import '../../constants/image_assets.dart';
import '../../utils/export.dart';
import '../../widgets/auth_widgets.dart';

class AddNewMemberBody extends StatelessWidget {
  const AddNewMemberBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SpaceUtil.semiHalfBlockSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: () {
                  NavigatorUtil.pop();
                },
                child: Icon(Icons.arrow_back)),
            AutoSizeText('Add Family Member',
                style: TextStyleUtil.sizeMedium(
                    isBold: true, color: ColorConstants.blackColor)),
            SizedBox()
          ],
        ),
        SpaceUtil.halfBlockSpace,
        SizedBox(
          width: customWidth(0.3),
          height: customWidth(0.3),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              ImageAssets.menImage,
              fit: BoxFit.fill,
            ),
          ),
        ),
        SpaceUtil.halfBlockSpace,
        //Text fields
        //Email
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText('Full Name',
                style: TextStyleUtil.sizeMedium(isBold: true)),
            SpaceUtil.minorBlockSpace,
            customTextField('Enter Full Name'),
            SpaceUtil.semiHalfBlockSpace,
            AutoSizeText('Relation',
                style: TextStyleUtil.sizeMedium(isBold: true)),
            SpaceUtil.minorBlockSpace,
            customTextField('Relation'),
            SpaceUtil.semiHalfBlockSpace,
            AutoSizeText('Phone Number',
                style: TextStyleUtil.sizeMedium(isBold: true)),
            SpaceUtil.minorBlockSpace,
            customTextField('Phone Number'),
            SpaceUtil.semiHalfBlockSpace,
            AutoSizeText('Date of birth',
                style: TextStyleUtil.sizeMedium(isBold: true)),
            SpaceUtil.minorBlockSpace,
            customTextField('Date of birth'),
            SpaceUtil.semiHalfBlockSpace,
            // AutoSizeText('Birth Gender',
            //     style: TextStyleUtil.sizeMedium(isBold: true)),
          ],
        ),
      ],
    );
  }
}
