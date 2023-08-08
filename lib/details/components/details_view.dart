import 'package:flutter/material.dart';
import 'package:shoe_app/details/components/app_bar.dart';
import 'package:shoe_app/model/models.dart';
import 'package:shoe_app/utils/constants.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({Key? key, required this.model, required this.isComeFromMoreSection}) : super(key: key);
  final ShoeModel model;
  final bool isComeFromMoreSection;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: AppConstantsColor.backgroundColor,
        appBar: CustomeAppBar(),
      ),
    );
  }
}

