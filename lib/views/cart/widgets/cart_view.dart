import 'package:flutter/material.dart';
import 'package:shoe_app/animation/fade_animation.dart';
import 'package:shoe_app/data/dummy_data.dart';
import 'package:shoe_app/model/models.dart';
import 'package:shoe_app/theme/custom_app_theme.dart';
import 'package:shoe_app/utils/constants.dart';
import 'package:shoe_app/views/cart/widgets/empty_state.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  int lengthOfCartItems = itemsOnBag.length;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppConstantsColor.backgroundColor,
        body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            width: width,
            height: height,
            child: Column(
              children: [
                _cartAppBar(
                    width: width,
                    height: height,
                    lengthOfCartItems: lengthOfCartItems),
                SizedBox(
                  width: width,
                  height: height * 0.8,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: itemsOnBag.length,
                    itemBuilder: (context, index) {
                      ShoeModel currentCartItem = itemsOnBag[index];
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 4),
                        width: width,
                        height: height * 0.2,
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.4,
                              child: Stack(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(20),
                                    width: width * 0.36,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: currentCartItem.modelColor
                                          .withOpacity(0.9),
                                    ),
                                  ),
                                  Positioned(
                                      right: 2,
                                      bottom: 15,
                                      child: RotationTransition(
                                        turns:
                                            AlwaysStoppedAnimation(-40 / 360),
                                        child: SizedBox(
                                          width: 140,
                                          height: 140,
                                          child: Image(
                                            image: AssetImage(
                                              currentCartItem.imgAddress,
                                            ),
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 14,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  currentCartItem.model,
                                  style: AppThemes.bagProductModel,
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text("\$${currentCartItem.price}",
                                    style: AppThemes.bagProductPrice),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          
                                        });
                                      },
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.grey[300],
                                        ),
                                        child: Center(
                                            child: Icon(
                                          Icons.remove,
                                          size: 15,
                                        )),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("1",
                                        style: AppThemes.bagProductNumOfShoe),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.grey[300],
                                        ),
                                        child: Center(
                                            child: Icon(
                                          Icons.add,
                                          size: 15,
                                        )),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class _cartAppBar extends StatelessWidget {
  const _cartAppBar({
    super.key,
    required this.width,
    required this.height,
    required this.lengthOfCartItems,
  });

  final double width;
  final double height;
  final int lengthOfCartItems;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height / 14,
      child: FadeAnimation(
        delay: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "My Cart",
              style: AppThemes.bagTitle,
            ),
            Text(
              "Total $lengthOfCartItems Items",
              style: AppThemes.bagTotalPrice,
            )
          ],
        ),
      ),
    );
  }
}
