import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoe_app/theme/custom_app_theme.dart';
import 'package:shoe_app/utils/constants.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();

 

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          'Discover',
          style: AppThemes.homeAppBar,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.search,
            size: 25,
            color: AppConstantsColor.darkTextColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.bell,
            size: 25,
            color: AppConstantsColor.darkTextColor,
          ),
        )
      ],
    );
  }

  Size get preferredSize => const Size.fromHeight(70);
}
