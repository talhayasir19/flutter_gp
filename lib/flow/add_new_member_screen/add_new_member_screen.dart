import 'package:flutter/material.dart';
import 'package:flutter_gp/flow/add_new_member_screen/add_new_member_widgets.dart';
import 'package:flutter_gp/widgets/export.dart';

class AddNewMemberScreen extends StatelessWidget {
  const AddNewMemberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(body: AddNewMemberBody());
  }
}
