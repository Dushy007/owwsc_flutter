import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({this.title, this.icon, super.key});
  final Widget? title;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return AppBar(title: title,leading: icon, centerTitle: true, foregroundColor: Colors.white,);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
