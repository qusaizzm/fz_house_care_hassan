import 'package:flutter/material.dart';
import 'package:fz_hassan/init/constants.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key, this.leading, this.actions, this.title});
  // ignore: prefer_typing_uninitialized_variables
  final leading;
  // ignore: prefer_typing_uninitialized_variables
  final actions;
  // ignore: prefer_typing_uninitialized_variables
  final title;

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title ??
          SizedBox(
            height: 60,
            child: Image.asset('assets/img/logo-wi.png'),
          ),
      centerTitle: true,
      backgroundColor: kPrimaryColor,
      leading: Center(child: leading ?? Container()),
      actions: actions ?? [],
    );
  }
}
