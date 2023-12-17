import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gp/constants/export.dart';
import 'package:flutter_gp/flow/login_screen/bloc/export.dart';
import 'package:flutter_gp/utils/navigator/export.dart';
import 'package:provider/provider.dart';

import '../../utils/export.dart';
import '../../widgets/auth_widgets.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/export.dart';
import '../../widgets/password_strength_textfield/export.dart';

class LoginScreenBody extends StatefulWidget {
  LoginScreenBody({super.key});
  TextEditingController textEditingController = TextEditingController();
  @override
  State<LoginScreenBody> createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<LoginScreenBody> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    LoginScreenBloc loginScreenBloc =
        Provider.of<LoginScreenBloc>(context, listen: false);

    return WillPopScope(
      onWillPop: () async {
        loginScreenBloc.add(CheckBoxEvent(false));
        return true;
      },
      child: SingleChildScrollView(
        child: SizedBox(
          height: customHeight(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  //top background
                  Image.asset(ImageAssets.topBackground),
                  SpaceUtil.semiHalfBlockSpace,
                  //logo
                  Image.asset(ImageAssets.logo),
                  SpaceUtil.semiHalfBlockSpace,
                  SizedBox(
                    width: customWidth(0.9),
                    child: AutoSizeText(
                      'Login to your account',
                      style: TextStyleUtil.sizeLarge(isBold: true),
                    ),
                  ),
                  SpaceUtil.halfBlockSpace,
                  //Text fields
                  textFields(widget.textEditingController),
                  BlocBuilder<LoginScreenBloc, LoginScreenState>(
                    builder: (context, state) {
                      bool isChecked = false;
                      if (state is LoginScreenCheckedState) {
                        isChecked = true;
                      }
                      return Padding(
                          padding: EdgeInsets.only(
                              right: customWidth(
                                0.05,
                              ),
                              left: customWidth(0.02)),
                          child: checkBoxWidget(isChecked, loginScreenBloc));
                    },
                  ),
                  SpaceUtil.semiHalfBlockSpace,
                  //login button
                  CustomButton(
                    text: 'Login',
                    onPressed: () {
                      NavigatorUtil.toHomePage();
                    },
                  ),
                ],
              ),
              //didnot have account widget
              didnotHaveAccountWidget()
            ],
          ),
        ),
      ),
    );
  }
}

//textfields
Widget textFields(TextEditingController textEditingController) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      AutoSizeText('Email', style: TextStyleUtil.sizeMedium(isBold: true)),
      SpaceUtil.minorBlockSpace,
      customTextField('Enter email'),
      SpaceUtil.semiHalfBlockSpace,
      // AutoSizeText('Password', style: TextStyleUtil.sizeMedium(isBold: true)),
      SpaceUtil.minorBlockSpace,
      PasswordStrengthTextField(
        textEditingController: textEditingController,
        showPasswordStrength: true,
      ),
      SpaceUtil.veryMinorBlockSpace,
    ],
  );
}

//remeber me checkbox
Widget checkBoxWidget(bool isTrue, LoginScreenBloc loginScreenBloc) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          SizedBox(
            width: customWidth(0.12),
            child: Checkbox(
              value: isTrue,
              fillColor: MaterialStatePropertyAll(ColorConstants.primaryColor),
              overlayColor:
                  MaterialStatePropertyAll(ColorConstants.primaryColor),
              onChanged: (value) {
                loginScreenBloc.add(CheckBoxEvent(value!));
              },
            ),
          ),
          AutoSizeText(
            'Remember me',
            style: TextStyleUtil.sizeSmall(
                color: ColorConstants.darkGreyColor, isBold: false),
          ),
        ],
      ),
      InkWell(
        onTap: () {},
        child: AutoSizeText(
          'Forgot Password?',
          style: TextStyleUtil.sizeSmall(
              color: ColorConstants.darkGreyColor, isBold: false),
        ),
      ),
    ],
  );
}
