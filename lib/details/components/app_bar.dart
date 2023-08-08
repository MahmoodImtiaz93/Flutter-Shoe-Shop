import 'package:flutter/material.dart';
import 'package:shoe_app/theme/custom_app_theme.dart';
import 'package:shoe_app/utils/constants.dart';

class CustomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text(
        'Nike',
        style: AppThemes.detailsAppBar,
      ),
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_back),
        color: AppConstantsColor.darkTextColor,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite_border),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(65);
}
