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
        backgroundColor: Colors.black,
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
                    ),
                    Positioned(
                      top: 100,
                      left: 30,
                      child: Hero(
                        tag: isComeFromMoreSection
                            ? model.model
                            : model.imgAddress,
                        child: RotationTransition(
                          turns: const AlwaysStoppedAnimation(-25 / 360),
                          child: SizedBox(
                            width: msize.width / 1.3,
                            height: msize.height / 4.3,
                            child: Image(
                              image: AssetImage(model.imgAddress),
                            ),
                          ),
                        ),
                      ),
                    ),
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
