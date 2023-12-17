import 'package:flutter/material.dart';
import 'package:flutter_gp/flow/profile_screen/profile_screen_widgets.dart';
import 'package:flutter_gp/widgets/export.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      body: ProfileScreenBody(),
      isPadded: false,
    );
  }
}
