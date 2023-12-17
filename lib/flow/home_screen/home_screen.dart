import 'package:flutter/material.dart';
import 'package:flutter_gp/constants/export.dart';
import 'package:flutter_gp/flow/home_screen/export.dart';
import 'package:flutter_gp/widgets/export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      body: HomeScreenBody(),
      isPadded: false,
    );
  }
}
