import 'package:flutter/material.dart';
import 'package:shoe_app/theme/custom_app_theme.dart';
import 'package:shoe_app/utils/constants.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Nike',
          style: AppThemes.detailsAppBar,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: AppConstantsColor.darkTextColor,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border),
          )
        ],
      ),
    );
  }
}
