import 'package:flutter/material.dart';

import '../export.dart';

class NavigatorUtil {
  static final navigatorKey = GlobalKey<NavigatorState>();

  static NavigatorState get state => navigatorKey.currentState!;
  static BuildContext get context => navigatorKey.currentContext!;

  static Future<void> back() async {
    await state.maybePop();
  }

  static Future<void> pop() async {
    state.pop();
  }

  static Future<void> toLoginPage() async {
    await state.pushNamed(
      RoutesUtil.logInPage,
    );
  }

  static Future<void> toHomePage() async {
    await state.pushNamed(
      RoutesUtil.homePage,
    );
  }

  static Future<void> toProfilePage() async {
    await state.pushNamed(
      RoutesUtil.profilePage,
    );
  }

  static Future<void> toAddNewMemberPage() async {
    await state.pushNamed(
      RoutesUtil.addNewMemberPage,
    );
  }
}
