import 'package:flutter/material.dart';
import 'package:flutter_gp/flow/add_new_member_screen/add_new_member_screen.dart';
import 'package:flutter_gp/flow/add_new_member_screen/add_new_member_widgets.dart';
import 'package:flutter_gp/flow/home_screen/home_screen.dart';
import 'package:flutter_gp/flow/login_screen/export.dart';
import 'package:flutter_gp/flow/profile_screen/profile_screen.dart';
import 'package:flutter_gp/utils/export.dart';

class AppNavigation {
  /*
    this class will control all navigation of the app
    all routes are defined in it . it has a static method
       buildPage     that have all predefined routes
   */

  static Route<dynamic>? buildPage(RouteSettings settings) {
    /*
    this function has all routes of the app and return a Widget based on page
    key.
      params:
         RouteSettings   it is the object of RouteSettings that has the info
                         about new page that is requested to navigate
      return:
          Route  it is return type that mean a page will be returned either
          material page or cupertino page
    */
    switch (settings.name) {
      ///
      ///
      /// First Screen Choose Role
      ///

      case RoutesUtil.logInPage:
        {
          return MaterialPageRoute(
              builder: (context) {
                return LoginScreen();
              },
              settings: settings);
        }
      case RoutesUtil.homePage:
        {
          return MaterialPageRoute(
              builder: (context) {
                return HomeScreen();
              },
              settings: settings);
        }
      case RoutesUtil.profilePage:
        {
          return MaterialPageRoute(
              builder: (context) {
                return ProfileScreen();
              },
              settings: settings);
        }
      case RoutesUtil.addNewMemberPage:
        {
          return MaterialPageRoute(
              builder: (context) {
                return AddNewMemberScreen();
              },
              settings: settings);
        }
      // case RoutesUtil.signupPage:
      //   {
      //     return MaterialPageRoute(
      //         builder: (context) {
      //           return SignUpPage();
      //         },
      //         settings: settings);
      //   }
      // case RoutesUtil.enterOtpPage:
      //   {
      //     return MaterialPageRoute(
      //         builder: (context) {
      //           return EnterOtpPage();
      //         },
      //         settings: settings);
      //   }
      // case RoutesUtil.twoFAOptionsPage:
      //   {
      //     return MaterialPageRoute(
      //         builder: (context) {
      //           return TwoFactorAuthOptionScreen();
      //         },
      //         settings: settings);
      //   }
      // case RoutesUtil.smsAuthPage:
      //   {
      //     return MaterialPageRoute(
      //         builder: (context) {
      //           return SmsAuthScreen();
      //         },
      //         settings: settings);
      //   }
      // case RoutesUtil.emailAuthPage:
      //   {
      //     return MaterialPageRoute(
      //         builder: (context) {
      //           return EmailAuthScreen();
      //         },
      //         settings: settings);
      //   }
      // case RoutesUtil.allSetPage:
      //   {
      //     return MaterialPageRoute(
      //         builder: (context) {
      //           return AllSetScreen();
      //         },
      //         settings: settings);
      //   }
      default:
        {
          return MaterialPageRoute(
            builder: (context) {
              return LoginScreen();
            },
          );
        }
    }
  }
}
