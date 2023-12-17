import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gp/utils/navigator/export.dart';
import 'package:flutter_gp/utils/routes_util.dart';

import 'flow/add_new_member_screen/export.dart';
import 'flow/home_screen/export.dart';
import 'flow/login_screen/bloc/export.dart';
import 'flow/login_screen/export.dart';
import 'flow/profile_screen/export.dart';
import 'utils/screen_basic_elements.dart';
import 'widgets/password_strength_textfield/bloc/export.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    initialize(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PasswordStrengthTextfieldBloc(),
        ),
        BlocProvider(
          create: (context) => LoginScreenBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        navigatorKey: NavigatorUtil.navigatorKey,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppNavigation.buildPage,
        initialRoute: RoutesUtil.logInPage,
      ),
    );
  }
}
