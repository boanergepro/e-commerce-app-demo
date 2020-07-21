import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar({
  BuildContext ctx,
  String title,
  List<Widget> actions,
  bool showleading: true,
  PreferredSizeWidget bottom,
}) {
  bool showActions = false;

  if (actions != null) {
    showActions = true;
  };

  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    centerTitle: true,
    bottom: bottom,
    leading: showleading
        ? IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
      onPressed: () {
        Navigator.pop(ctx);
      },
    )
        : null,
    title: Text(
      title,
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    actions: showActions ? actions : [],
  );
}