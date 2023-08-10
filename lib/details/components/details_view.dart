import 'package:flutter/material.dart';
import 'package:shoe_app/animation/fade_animation.dart';
import 'package:shoe_app/details/components/app_bar.dart';
import 'package:shoe_app/model/models.dart';
import 'package:shoe_app/theme/custom_app_theme.dart';
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
              _topProductImageAndBg(msize),
              _moreProduct(msize),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    _nameAndPrice(),
                    _shoeInfo(msize.width, msize.height),
                    _moreDetailsText(msize.width, msize.height)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _moreProduct(Size msize) {
    return FadeAnimation(
      delay: 1,
      child: SizedBox(
        width: msize.width,
        height: msize.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            4,
            (index) => index == 3
                ? Container(
                    padding: const EdgeInsets.all(2),
                    width: msize.width / 5,
                    height: msize.height / 14,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      image: DecorationImage(
                        image: AssetImage(model.imgAddress),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.grey.withOpacity(1), BlendMode.darken),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.play_circle_fill,
                        color: AppConstantsColor.lightTextColor,
                        size: 30,
                      ),
                    ),
                  )
                : Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    child: roundedImage(msize.width, msize.height),
                  ),
          ),
        ),
      ),
    );
  }

  Widget _topProductImageAndBg(Size msize) {
    return SizedBox(
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
              tag: isComeFromMoreSection ? model.model : model.imgAddress,
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
    );
  }

  // Rounded Image Widget About Below method Widget
  Widget roundedImage(width, height) {
    return Container(
      padding: const EdgeInsets.all(2),
      width: width / 5,
      height: height / 14,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[300],
      ),
      child: Image(
        image: AssetImage(model.imgAddress),
      ),
    );
  }

  //Name And Price Text Widget
  Widget _nameAndPrice() {
    return FadeAnimation(
      delay: 1,
      child: Row(
        children: [
          Text(
            model.model,
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              color: AppConstantsColor.darkTextColor,
            ),
          ),
          Expanded(child: Container()),
          Text('\$${model.price.toStringAsFixed(2)}',
              style: AppThemes.detailsProductPrice),
        ],
      ),
    );
  }

//About Shoe Text Widget
  Widget _shoeInfo(width, height) {
    return FadeAnimation(
      delay: 1.5,
      child: Container(
        width: width,
        height: height / 9,
        child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt laoreet enim, eget sodales ligula semper at. Sed id aliquet eros, nec vestibulum felis. Nunc maximus aliquet aliquam. Quisque eget sapien at velit cursus tincidunt. Duis tempor lacinia erat eget fermentum.",
            style: AppThemes.detailsProductDescriptions),
      ),
    );
  }

  //more details Text Widget
  Widget _moreDetailsText(width, height) {
    return FadeAnimation(
      delay: 2,
      child: Container(
        padding: EdgeInsets.only(right: 280),
        height: height / 26,
        child: FittedBox(
            child: Text('MORE DETAILS', style: AppThemes.detailsMoreText)),
      ),
    );
  }
}
