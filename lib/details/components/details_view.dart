import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoe_app/animation/fade_animation.dart';
import 'package:shoe_app/data/dummy_data.dart';
import 'package:shoe_app/details/components/app_bar.dart';
import 'package:shoe_app/model/models.dart';
import 'package:shoe_app/theme/custom_app_theme.dart';
import 'package:shoe_app/utils/app_methods.dart';
import 'package:shoe_app/utils/constants.dart';

class DetailsView extends StatefulWidget {
  const DetailsView(
      {Key? key, required this.model, required this.isComeFromMoreSection})
      : super(key: key);
  final ShoeModel model;
  final bool isComeFromMoreSection;

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  bool _isCountrySelected = false;
  int? _isSelectedSize;
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
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _nameAndPrice(),
                    _shoeInfo(msize.width, msize.height),
                    _moreDetailsText(msize.width, msize.height),
                    _sizeAndCountrySelection(msize),
                    _endSizesAndButton(msize.width, msize.height),
                    materialButton(msize.width, msize.height)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _sizeAndCountrySelection(Size msize) {
    return FadeAnimation(
      delay: 2.5,
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Size",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppConstantsColor.darkTextColor,
                  fontSize: 22),
            ),
            SizedBox(
              width: msize.width * 0.35,
              height: msize.height * 0.05,
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _isCountrySelected = false;
                      });
                    },
                    child: Text(
                      "Uk",
                      style: TextStyle(
                        fontWeight: !_isCountrySelected
                            ? FontWeight.w400
                            : FontWeight.bold,
                        color: !_isCountrySelected
                            ? Colors.grey
                            : AppConstantsColor.darkTextColor,
                        fontSize: 19,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _isCountrySelected = true;
                      });
                    },
                    child: Text(
                      "USA",
                      style: TextStyle(
                        fontWeight: _isCountrySelected
                            ? FontWeight.w400
                            : FontWeight.bold,
                        color: _isCountrySelected
                            ? Colors.grey
                            : AppConstantsColor.darkTextColor,
                        fontSize: 19,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
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
                        image: AssetImage(widget.model.imgAddress),
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
                  color: widget.model.modelColor,
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
              tag: widget.isComeFromMoreSection
                  ? widget.model.model
                  : widget.model.imgAddress,
              child: RotationTransition(
                turns: const AlwaysStoppedAnimation(-25 / 360),
                child: SizedBox(
                  width: msize.width / 1.3,
                  height: msize.height / 4.3,
                  child: Image(
                    image: AssetImage(widget.model.imgAddress),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Rounded Image Widget About Below method Components
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
        image: AssetImage(widget.model.imgAddress),
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
            widget.model.model,
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              color: AppConstantsColor.darkTextColor,
            ),
          ),
          Expanded(child: Container()),
          Text('\$${widget.model.price.toStringAsFixed(2)}',
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

  //more details Text Wiget
  Widget _moreDetailsText(width, height) {
    return const FadeAnimation(
      delay: 2,
      child: Padding(
        padding: EdgeInsets.only(top: 12.0),
        child: Text('MORE DETAILS', style: AppThemes.detailsMoreText),
      ),
    );
  }

  Widget _endSizesAndButton(width, height) {
    return Container(
      width: width,
      height: height / 20,
      child: FadeAnimation(
        delay: 3,
        child: Row(
          children: [
            Container(
              width: width / 4.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 1)),
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Try it",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    RotatedBox(
                        quarterTurns: -1,
                        child: FaIcon(FontAwesomeIcons.shoePrints))
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            SizedBox(
              width: width / 1.5,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _isSelectedSize = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 5),
                        width: width / 6,
                        height: height / 13,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: _isSelectedSize == index
                                  ? Colors.black
                                  : Colors.grey,
                              width: 1.5),
                          color: _isSelectedSize == index
                              ? Colors.black
                              : AppConstantsColor.backgroundColor,
                        ),
                        child: Center(
                          child: Text(
                            sizes[index].toString(),
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: _isSelectedSize == index
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

//button
  Widget  materialButton(width, height) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: FadeAnimation(
          delay: 3.5,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            minWidth: width / 1.2,
            height: height / 20,
            color: widget.model.modelColor,
            onPressed: () {
              AppMethods.addToCart(widget.model, context);
            },
            child: Text(
              "ADD TO BAG",
              style: TextStyle(color: AppConstantsColor.lightTextColor),
            ),
          ),
        ),
      ),
    );
  }
}
