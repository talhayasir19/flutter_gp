import 'package:flutter/material.dart';
import 'package:flutter_gp/flow/login_screen/login_screen_widgets.dart';

import '../../widgets/export.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      body: LoginScreenBody(),
      isPadded: false,
    );
  }
}
