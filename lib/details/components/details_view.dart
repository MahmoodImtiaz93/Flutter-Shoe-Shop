import 'package:flutter/material.dart';
import 'package:shoe_app/animation/fade_animation.dart';
import 'package:shoe_app/details/components/app_bar.dart';
import 'package:shoe_app/model/models.dart';
import 'package:shoe_app/utils/constants.dart';

class DetailsView extends StatelessWidget {
  const DetailsView(
      {Key? key, required this.model, required this.isComeFromMoreSection})
      : super(key: key);
  final ShoeModel model;
  final bool isComeFromMoreSection;
  @override
  Widget build(BuildContext context) {
    Size msize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: AppConstantsColor.backgroundColor,
        appBar: const CustomeAppBar(),
        body: SizedBox(
          width: msize.width,
          height: msize.height * 1.1,
          child: Column(
            children: [
              SizedBox(
                width: msize.width,
                height: msize.height / 2.3,
                child: Stack(
                  children: [
                    Positioned(
                      left: 80,
                      bottom: 20,
                      child: FadeAnimation(
                        delay: 0.5,
                        child: Container(
                          width: 1000,
                          height: msize.height / 2.2,
                          decoration: BoxDecoration(
                            color: model.modelColor,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(1500),
                              bottomRight: Radius.circular(100),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
