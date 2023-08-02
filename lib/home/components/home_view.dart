import 'package:flutter/material.dart';
import 'package:shoe_app/animation/fade_animation.dart';
import 'package:shoe_app/data/dummy_data.dart';
import 'package:shoe_app/home/components/home_appBar.dart';
import 'package:shoe_app/model/models.dart';
import 'package:shoe_app/theme/custom_app_theme.dart';
import 'package:shoe_app/utils/constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndexOfCategory = 0;
  int selectedIndexOfFeatured = 1;
  @override
  Widget build(BuildContext context) {
    Size msize = MediaQuery.of(context).size;
    return Center(
      child: Scaffold(
        backgroundColor: AppConstantsColor.backgroundColor,
        appBar: HomeAppBar(),
        body: Column(
          children: [
            _categoryView(msize),
            SizedBox(height: msize.height * 0.01),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: msize.width * 0.02),
                  width: msize.width / 16,
                  height: msize.height / 2.4,
                  child: RotatedBox(
                    quarterTurns: -1,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: featured.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndexOfFeatured = index;
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: msize.width * 0.04),
                            child: Text(
                              featured[index],
                              style: TextStyle(
                                  fontSize: selectedIndexOfFeatured == index
                                      ? 21
                                      : 18,
                                  color: selectedIndexOfFeatured == index
                                      ? AppConstantsColor.darkTextColor
                                      : AppConstantsColor.unSelectedTextColor,
                                  fontWeight: selectedIndexOfFeatured == index
                                      ? FontWeight.w500
                                      : FontWeight.w400),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  width: msize.width * 0.89,
                  height: msize.height * 0.4,
                  child: ListView.builder(
                    itemCount: availableShoes.length,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      ShoeModel model = availableShoes[index];
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: msize.height * 0.01,
                              vertical: msize.width * 0.01),
                          width: msize.width / 1.5,
                          child: Stack(
                            children: [
                              Container(
                                width: msize.width / 1.81,
                                decoration: BoxDecoration(
                                    color: model.modelColor,
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              Positioned(
                                left: 10,
                                child: FadeAnimation(
                                  delay: 1,
                                  child: Row(
                                    children: [
                                      Text(
                                        model.name,
                                        style: AppThemes.homeProductName,
                                      ),
                                      SizedBox(
                                        width: msize.width * 0.3,
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.favorite_border,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _categoryView(Size msize) {
    return Row(
      children: [
        SizedBox(
          width: msize.width,
          height: msize.height * 0.04,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndexOfCategory = index;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: msize.width * 0.04),
                  child: Text(
                    categories[index],
                    style: TextStyle(
                        fontSize: selectedIndexOfCategory == index ? 21 : 18,
                        color: selectedIndexOfCategory == index
                            ? AppConstantsColor.darkTextColor
                            : AppConstantsColor.unSelectedTextColor,
                        fontWeight: selectedIndexOfCategory == index
                            ? FontWeight.w500
                            : FontWeight.w400),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
