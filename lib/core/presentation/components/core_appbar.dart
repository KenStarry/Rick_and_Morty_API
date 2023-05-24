import 'package:flutter/material.dart';

class CoreAppBar extends StatelessWidget {

  final String title;

  const CoreAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      elevation: 0,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
