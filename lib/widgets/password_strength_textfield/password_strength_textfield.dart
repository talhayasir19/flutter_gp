import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gp/utils/textstyle_util.dart';
import 'package:provider/provider.dart';

import '../../constants/export.dart';
import '../../utils/export.dart';
import 'bloc/export.dart';

class PasswordStrengthTextField extends StatefulWidget {
  TextEditingController textEditingController;
  bool showReenterPassword;
  bool showPasswordStrength;
  PasswordStrengthTextField(
      {super.key,
      required this.textEditingController,
      this.showReenterPassword = false,
      this.showPasswordStrength = false});

  @override
  State<PasswordStrengthTextField> createState() =>
      _PasswordStrengthTextFieldState();
}

class _PasswordStrengthTextFieldState extends State<PasswordStrengthTextField> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    PasswordStrengthTextfieldBloc passwordStrengthTextfieldBloc =
        Provider.of<PasswordStrengthTextfieldBloc>(context);

    return BlocBuilder<PasswordStrengthTextfieldBloc,
        PasswordStrengthTextfieldState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              'Password',
              style: TextStyleUtil.sizeMedium(isBold: true),
            ),
            SizedBox(
              height: customHeight(0.01),
            ),
            //password widget
            SizedBox(
              width: customWidth(0.9),
              height: customHeight(0.07),
              child: passwordWidget(
                  isVisible: (state is PasswordHideState) ? true : false,
                  onPressed: () {
                    passwordStrengthTextfieldBloc.add(
                        PasswordVisibilityEvent(widget.textEditingController));
                  },
                  textEditingController: widget.textEditingController,
                  ref: passwordStrengthTextfieldBloc,
                  isPasswordStrength: widget.showPasswordStrength),
            ),

            //password strength
            if (widget.showPasswordStrength)
              Column(
                children: [
                  SizedBox(
                    height: customHeight(0.01),
                  ),
                  passwordStrengthWidget(strength: state.strength),
                ],
              ),

            //reenter password widget
            if (widget.showReenterPassword)
              Column(
                children: [
                  SizedBox(
                    height: customHeight(0.03),
                  ),
                  SizedBox(
                    width: customWidth(0.9),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //ReEnter password
                        AutoSizeText(
                          'Re - Enter Password',
                          style: TextStyleUtil.sizeMedium(isBold: true),
                        ),
                        SizedBox(
                          height: customHeight(0.01),
                        ),

                        SizedBox(
                            width: customWidth(0.9),
                            height: customHeight(0.07),
                            child: renterPassword(
                                onPressed: () {},
                                isVisible: (state is PasswordHideState)
                                    ? true
                                    : false)),
                      ],
                    ),
                  ),
                ],
              ),
          ],
        );
      },
    );
  }
}

//password strength widget
Widget passwordStrengthWidget({required int strength}) {
  return Column(
    children: [
      Row(
        children: [
          Container(
            width: customWidth(0.2),
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: strength > 0
                  ? ColorConstants.purpleColor
                  : ColorConstants.lightGreyColor,
            ),
          ),
          Container(
            width: customWidth(0.2),
            margin: EdgeInsets.only(left: customWidth(0.03)),
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: strength > 1
                  ? ColorConstants.purpleColor
                  : ColorConstants.lightGreyColor,
            ),
          ),
          Container(
            width: customWidth(0.2),
            margin: EdgeInsets.only(left: customWidth(0.03)),
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: strength > 2
                  ? ColorConstants.purpleColor
                  : ColorConstants.lightGreyColor,
            ),
          ),
          Container(
            width: customWidth(0.2),
            margin: EdgeInsets.only(left: customWidth(0.03)),
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: strength > 3
                  ? ColorConstants.purpleColor
                  : ColorConstants.lightGreyColor,
            ),
          )
        ],
      ),
      SizedBox(
        height: customHeight(0.01),
      ),
      if (strength > 0)
        Row(
          children: [
            AutoSizeText(
              'Password strength: ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: customFontSize(0.02), fontWeight: FontWeight.w400),
            ),
            AutoSizeText(
              strength == 1
                  ? 'Weak'
                  : strength == 2
                      ? 'Good'
                      : strength == 3
                          ? 'Strong'
                          : strength == 4
                              ? 'Excellent'
                              : '',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: customFontSize(0.02),
                  color: ColorConstants.purpleColor,
                  fontWeight: FontWeight.w600),
            )
          ],
        )
    ],
  );
}

//password widget
Widget passwordWidget(
    {required bool isVisible,
    required VoidCallback onPressed,
    required TextEditingController textEditingController,
    required PasswordStrengthTextfieldBloc ref,
    required bool isPasswordStrength}) {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    obscureText: isVisible,
    onChanged: (value) {
      if (isPasswordStrength) {
        ref.add(PasswordAdjustStrengthEvent(value));
      }
    },
    decoration: InputDecoration(
      hintStyle: TextStyleUtil.sizeSmall(),
      hintText: "Enter Password",
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: ColorConstants.lightGreyColor)),
    ),
    controller: textEditingController,
  );
}

//reEnter password widget
Widget renterPassword(
    {required VoidCallback onPressed, required bool isVisible}) {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    obscureText: isVisible,
    decoration: InputDecoration(
      hintText: "Re-Enter Password",
      hintStyle: TextStyleUtil.sizeSmall(),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: ColorConstants.lightGreyColor)),
    ),
  );
}
