import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

PreferredSizeWidget mainAppBar(
        {required BuildContext context, required String title}) =>
    AppBar(
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).scaffoldBackgroundColor
      ),
      leading: const Icon(Icons.menu),
      elevation: 0,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      iconTheme: Theme.of(context).iconTheme,
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
    );
