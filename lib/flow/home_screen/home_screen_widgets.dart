import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gp/constants/export.dart';
import 'package:flutter_gp/utils/export.dart';
import 'package:flutter_gp/utils/navigator/export.dart';

import '../../widgets/custom_button.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          SizedBox(
            height: customHeight(),
            child: Stack(children: [
              //book appointment block
              bookAppointmentWidget(),
              Positioned(
                top: customHeight(0.3),
                child: Container(
                  width: customWidth(),
                  decoration: const BoxDecoration(
                      color: ColorConstants.whiteColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  height: customHeight(0.7),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: customWidth(0.05), right: customWidth(0.05)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //center doctors widget
                        centerDoctorWidget(),
                        SpaceUtil.halfBlockSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AutoSizeText('Health Articles',
                                style: TextStyleUtil.sizeMedium(
                                    isBold: true,
                                    color: ColorConstants.blackColor)),
                            AutoSizeText('See All',
                                style: TextStyleUtil.sizeMedium(
                                    isBold: false,
                                    color: ColorConstants.darkGreyColor)),
                          ],
                        ),
                        SpaceUtil.semiHalfBlockSpace,
                        //health articles widget
                        Container(
                          width: customWidth(),
                          height: customHeight(0.2),
                          decoration: BoxDecoration(
                              color: ColorConstants.primaryColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: healthArticlesWidget()
                              //
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
      ),
    );
  }
}

//bool appointment bloc widget
Widget bookAppointmentWidget() {
  return Container(
    width: customWidth(),
    height: customHeight(0.34),
    color: ColorConstants.darkRedColor,
    child: Padding(
      padding:
          EdgeInsets.only(left: customWidth(0.05), right: customWidth(0.05)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SpaceUtil.semiHalfBlockSpace,
          Icon(
            Icons.select_all,
            color: ColorConstants.whiteColor,
          ),
          AutoSizeText('Hey, Emily!',
              style: TextStyleUtil.sizeMedium(
                  isBold: true, color: ColorConstants.whiteColor)),
          SpaceUtil.semiHalfBlockSpace,
          AutoSizeText('Wanna Book appointment?',
              style: TextStyleUtil.sizeSmall(
                  isBold: false, color: ColorConstants.lightGreyColor)),
          SpaceUtil.semiHalfBlockSpace,
          CustomButton(
            text: 'Book Appointment',
            isTextBold: false,
            onPressed: () {
              NavigatorUtil.toProfilePage();
            },
          ),
        ],
      ),
    ),
  );
}

//center doctors widget
Widget centerDoctorWidget() {
  return Column(
    children: [
      SpaceUtil.semiHalfBlockSpace,
      AutoSizeText('You have upcoming appontments!!',
          style: TextStyleUtil.sizeSmall(
              isBold: false, color: ColorConstants.darkGreyColor)),
      SpaceUtil.minorBlockSpace,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: customWidth(0.1),
                height: customWidth(0.1),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    ImageAssets.menImage,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SpaceUtil.horMinorBlockSpace,
              SizedBox(
                width: customWidth(0.35),
                child: FittedBox(
                  child: AutoSizeText('Dr.Emma Mia',
                      style: TextStyleUtil.sizeMedium(
                          isBold: false, color: ColorConstants.blackColor)),
                ),
              ),
            ],
          ),
          CustomButton(
            text: 'Attend Now',
            width: customWidth(0.32),
            height: customHeight(0.06),
            isInvert: true,
            isTextBold: false,
            onPressed: () {
              NavigatorUtil.toProfilePage();
            },
          ),
        ],
      ),
      SpaceUtil.semiHalfBlockSpace,
      Container(
        width: customWidth(),
        height: customHeight(0.07),
        decoration: BoxDecoration(
            color: ColorConstants.pinkColor,
            borderRadius: BorderRadius.circular(40)),
        child: Padding(
          padding: EdgeInsets.only(
              left: customWidth(0.04), right: customWidth(0.04)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: ColorConstants.primaryColor,
                  ),
                  SpaceUtil.horMinorBlockSpace,
                  AutoSizeText('Monday,May 12',
                      style: TextStyleUtil.sizeSmall(
                          isBold: true, color: ColorConstants.blackColor)),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.access_time,
                    color: ColorConstants.primaryColor,
                  ),
                  SpaceUtil.horMinorBlockSpace,
                  AutoSizeText('11:00-12:00 Am',
                      style: TextStyleUtil.sizeSmall(
                          isBold: true, color: ColorConstants.blackColor)),
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

//health articles widget
Widget healthArticlesWidget() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AutoSizeText('02 July 2022',
              style: TextStyleUtil.sizeMedium(
                  isBold: false, color: ColorConstants.whiteColor)),
          Icon(
            Icons.select_all,
            color: ColorConstants.whiteColor,
            size: customFontSize(0.05),
          ),
        ],
      ),
      Column(
        children: [
          SizedBox(
            width: customWidth(),
            child: AutoSizeText('Covid-19 Vaccine',
                style: TextStyleUtil.sizeMedium(
                    isBold: true, color: ColorConstants.whiteColor)),
          ),
          Row(
            children: [
              Expanded(
                child: AutoSizeText(
                    'Official public service announcement on corona virus from the world helth',
                    maxLines: 2,
                    style: TextStyleUtil.sizeSmall(
                        isBold: false, color: ColorConstants.whiteColor)),
              ),
              Icon(
                Icons.arrow_forward,
                color: ColorConstants.whiteColor,
                size: customFontSize(0.05),
              ),
            ],
          ),
        ],
      )
    ],
  );
}
