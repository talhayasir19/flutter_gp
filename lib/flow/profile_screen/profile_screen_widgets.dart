import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gp/utils/navigator/export.dart';

import '../../constants/export.dart';
import '../../utils/export.dart';
import '../../widgets/custom_button.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: customHeight(),
          child: Stack(children: [
            Container(
              width: customWidth(),
              height: customHeight(0.15),
              color: ColorConstants.darkRedColor,
              child: Padding(
                padding: EdgeInsets.only(
                    left: customWidth(0.05), right: customWidth(0.05)),
                child: Column(
                  children: [
                    SpaceUtil.semiHalfBlockSpace,
                    //profile row
                    profileRow()
                  ],
                ),
              ),
            ),
            Positioned(
              top: customHeight(0.12),
              child: Container(
                width: customWidth(),
                decoration: const BoxDecoration(
                    color: ColorConstants.whiteColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                height: customHeight(0.88),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: customWidth(0.05), right: customWidth(0.05)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SpaceUtil.semiHalfBlockSpace,
                      SizedBox(
                        width: customWidth(0.22),
                        height: customWidth(0.22),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            ImageAssets.menImage,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SpaceUtil.minorBlockSpace,
                      AutoSizeText('Mathew Adam',
                          style: TextStyleUtil.sizeMedium(
                              isBold: true, color: ColorConstants.blackColor)),
                      AutoSizeText('mathew@gmail.com',
                          style: TextStyleUtil.sizeSmall(
                              isBold: false, color: ColorConstants.blackColor)),
                      SpaceUtil.semiHalfBlockSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          verticalBox(topText: '23y 4m', bottomText: 'Age'),
                          SpaceUtil.horhalfBlockSpace,
                          verticalBox(
                              topText: 'Male', bottomText: 'Birth Gender'),
                        ],
                      ),
                      SpaceUtil.semiHalfBlockSpace,
                      SizedBox(
                        width: customWidth(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText('Family Member',
                                style: TextStyleUtil.sizeMedium(
                                    isBold: true,
                                    color: ColorConstants.blackColor)),
                            SpaceUtil.minorBlockSpace,
                            Row(
                              children: [
                                familyMemberWidget('Brother'),
                                SpaceUtil.horMinorBlockSpace,
                                familyMemberWidget('Father'),
                                SpaceUtil.horMinorBlockSpace,
                                //add new member
                                addNewMemberWidget()
                              ],
                            ),
                            SpaceUtil.semiHalfBlockSpace,
                            AutoSizeText('Past Appointments',
                                style: TextStyleUtil.sizeMedium(
                                    isBold: true,
                                    color: ColorConstants.blackColor)),
                            SpaceUtil.minorBlockSpace,
                            Container(
                              width: customWidth(),
                              height: customHeight(0.2),
                              decoration: BoxDecoration(
                                  color: ColorConstants.whiteColor,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: ColorConstants.darkGreyColor,
                                        blurRadius: 5,
                                        offset: Offset(1, 1))
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: customWidth(0.22),
                                      height: customWidth(0.22),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: Image.asset(
                                          ImageAssets.menImage,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: customWidth(0.02)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                SizedBox(
                                                  width: customWidth(0.4),
                                                  child: FittedBox(
                                                    child: AutoSizeText(
                                                        'Dr. Abraham George',
                                                        style: TextStyleUtil
                                                            .sizeMedium(
                                                                isBold: true,
                                                                color: ColorConstants
                                                                    .blackColor)),
                                                  ),
                                                ),
                                                FittedBox(
                                                  child: AutoSizeText('\$ 70',
                                                      style: TextStyleUtil
                                                          .sizeSmall(
                                                              isBold: true,
                                                              color: ColorConstants
                                                                  .blackColor)),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  width: customWidth(0.18),
                                                  height: customHeight(0.035),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstants
                                                          .pinkColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 2, right: 2),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .health_and_safety_sharp,
                                                          color: ColorConstants
                                                              .primaryColor,
                                                        ),
                                                        SpaceUtil
                                                            .horMinorBlockSpace,
                                                        AutoSizeText('4.0',
                                                            style: TextStyleUtil
                                                                .sizeMedium(
                                                                    isBold:
                                                                        false,
                                                                    color: ColorConstants
                                                                        .primaryColor)),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.camera_alt_outlined),
                                                SpaceUtil.horMinorBlockSpace,
                                                AutoSizeText('Video Section',
                                                    style:
                                                        TextStyleUtil.sizeSmall(
                                                            isBold: true,
                                                            color: ColorConstants
                                                                .blackColor)),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                SpaceUtil.horMinorBlockSpace,
                                                AutoSizeText('M.Shahzaib',
                                                    style:
                                                        TextStyleUtil.sizeSmall(
                                                            isBold: false,
                                                            color: ColorConstants
                                                                .blackColor)),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ]),
        )
      ],
    );
  }
}

//top profile widget
Widget profileRow() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Icon(
        Icons.select_all,
        color: ColorConstants.whiteColor,
      ),
      AutoSizeText('My Profile',
          style: TextStyleUtil.sizeMedium(
              isBold: true, color: ColorConstants.whiteColor)),
      const Icon(
        Icons.settings_outlined,
        color: ColorConstants.whiteColor,
      ),
    ],
  );
}

//vertical box
Widget verticalBox({required String topText, required String bottomText}) {
  return Container(
    width: customWidth(0.3),
    height: customHeight(0.1),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AutoSizeText(topText,
            maxLines: 1,
            style: TextStyleUtil.sizeMedium(
                isBold: true, color: ColorConstants.blackColor)),
        AutoSizeText(bottomText,
            maxLines: 1,
            style: TextStyleUtil.sizeSmall(
                isBold: false, color: ColorConstants.blackColor)),
      ],
    ),
    decoration: BoxDecoration(
        border: Border.all(color: ColorConstants.lightGreyColor, width: 1),
        borderRadius: BorderRadius.circular(10)),
  );
}

//family member widget
Widget familyMemberWidget(String text) {
  return Column(
    children: [
      SizedBox(
        width: customWidth(0.14),
        height: customWidth(0.14),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            ImageAssets.menImage,
            fit: BoxFit.fill,
          ),
        ),
      ),
      SpaceUtil.minorBlockSpace,
      AutoSizeText(text,
          maxLines: 1,
          style: TextStyleUtil.sizeSmall(
              isBold: false, color: ColorConstants.blackColor)),
    ],
  );
}

//add new member widget
Widget addNewMemberWidget() {
  return Column(
    children: [
      InkWell(
        onTap: () {
          NavigatorUtil.toAddNewMemberPage();
        },
        child: Container(
            width: customWidth(0.14),
            height: customWidth(0.14),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                    color: ColorConstants.lightGreyColor, width: 1.5)),
            child: Icon(Icons.add)),
      ),
      SpaceUtil.minorBlockSpace,
      AutoSizeText('Add',
          maxLines: 1,
          style: TextStyleUtil.sizeSmall(
              isBold: false, color: ColorConstants.primaryColor)),
    ],
  );
}
